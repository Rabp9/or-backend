<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Obras Controller
 *
 * @property \App\Model\Table\ObrasTable $Obras
 */
class ObrasController extends AppController
{
    public function initialize() {
        parent::initialize();
        $this->Auth->allow(['index', 'view']);
    }

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index() {
        $this->viewBuilder()->layout(false);
        
        $obras = $this->Obras->find()
            ->contain(['ObraImages'])
            ->where(['estado_id' => 1]);
                
        $this->set(compact('obras'));
        $this->set('_serialize', ['obras']);
    }


    /**
     * Get Admin method
     *
     * @return \Cake\Network\Response|null
     */
    public function getAdmin() {
        $obras = $this->Obras->find()
            ->contain(['ObraImages']);
                
        $this->set(compact('obras'));
        $this->set('_serialize', ['obras']);
    }

    /**
     * View method
     *
     * @param string|null $id Obra id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    
    public function view($id = null) {
        $obra = $this->Obras->get($id, [
            'contain' => ['ObraImages']
        ]);

        $this->set(compact('obra'));
        $this->set('_serialize', ['obra']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $this->viewBuilder()->layout(false);
        $obra = $this->Obras->newEntity();
        $obra->estado_id = 1;
        
        if ($this->request->is('post')) {
            
            $obra = $this->Obras->patchEntity($obra, $this->request->data);
            
            if ($this->Obras->save($obra)) {
                // move file
                foreach ($obra->obra_images as $obra_image) {
                    $src = WWW_ROOT . "tmp" . DS . $obra_image->url;
                    $dst = WWW_ROOT . "img". DS . 'obras' . DS . $obra_image->url;
                    if (file_exists($src)) {
                        rename($src, $dst);
                    }
                }             
                
                $message =  [
                    'text' => __('La obra fue guardada correctamente'),
                    'type' => 'success',
                ];
            } else {
                $message =  [
                    'text' => __('La obra no fue guardada correctamente'),
                    'type' => 'error',
                ];
            }
        }
        $this->set(compact('obra', 'message'));
        $this->set('_serialize', ['obra', 'message']);
    }
    
    public function preview() {
        $this->viewBuilder()->layout(false);
        
        if ($this->request->is("post")) {
            $filenames = array();
            $images = $this->request->data["files"];
            foreach ($images as $image) {
                $filename = "obra-" . $this->randomString();
                $url = WWW_ROOT . "tmp" . DS . $filename;
                $dst_final = WWW_ROOT . "img". DS . 'obras' . DS . $filename;
                
                while (file_exists($dst_final)) {
                    $filename = "obra-" . $this->randomString();
                    $url = WWW_ROOT . "tmp" . DS . $filename;
                    $dst_final = WWW_ROOT . "img". DS . 'obras' . DS . $filename;
                }

                if (move_uploaded_file($image["tmp_name"], $url)) {
                    $filenames[] = $filename;
                } else {
                    $message = [
                        "type" => "error",
                        'text' => 'Algunas imágenes no pudieron ser cargadas correctamente'
                    ];
                }
            }
            $this->set(compact("message", "filenames"));
            $this->set("_serialize", ["message", "filenames"]);
        }
    }
    
    /*
     * Create a random string
     * @author	XEWeb <>
     * @param $length the length of the string to create
     * @return $str the string
     */
    private function randomString($length = 6) {
        $str = "";
        $characters = array_merge(range('A','Z'), range('a','z'), range('0','9'));
        $max = count($characters) - 1;
        for ($i = 0; $i < $length; $i++) {
            $rand = mt_rand(0, $max);
            $str .= $characters[$rand];
        }
        return $str;
    }
    
    /*
     * Delete Image
     * @author	XEWeb <>
     * @param $length the length of the string to create
     * @return $str the string
     */
    public function deleteImage() {
        $id = $this->request->getData()['id'];
        
        $obra_image = $this->Obras->ObraImages->get($id);
        if ($this->Obras->ObraImages->delete($obra_image)) {
            $message =  [
                'text' => __('La imagen fue eliminada correctamente'),
                'type' => 'success',
            ];
        } else {
            $message =  [
                'text' => __('La imagen no fue eliminada correctamente'),
                'type' => 'error',
            ];
        }
        $this->set(compact("message"));
        $this->set("_serialize", ["message"]);
    }
}
