<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Slides Controller
 *
 * @property \App\Model\Table\SlidesTable $Slides
 */
class SlidesController extends AppController
{
    public function initialize() {
        parent::initialize();
        $this->Auth->allow(['index']);
    }

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index() {
        $slides = $this->Slides->find()
            ->where(['estado_id' => 1]);
                
        $this->set(compact('slides'));
        $this->set('_serialize', ['slides']);
    }
    
    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function getAdmin() {        
        $slides = $this->Slides->find();
                
        $this->set(compact('slides'));
        $this->set('_serialize', ['slides']);
    }

    /**
     * View method
     *
     * @param string|null $id Slide id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null) {
        $slide = $this->Slides->get($id, [
            'contain' => ['Estados']
        ]);

        $this->set(compact('slide'));
        $this->set('_serialize', ['slide']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $this->viewBuilder()->layout(false);
        $slide = $this->Slides->newEntity();
        $slide->estado_id = 1;
        
        if ($this->request->is('post')) {
            $slide = $this->Slides->patchEntity($slide, $this->request->data);
            
            $dst = WWW_ROOT . "img". DS . 'slides' . DS . $slide->url;
            $src = WWW_ROOT . "tmp" . DS . $slide->url;
            
            if ($this->Slides->save($slide)) {
                // move file
                
                if (file_exists($src)) {
                    rename($src, $dst);
                }
                    
                $message =  [
                    'text' => __('El slide fue guardado correctamente'),
                    'type' => 'success',
                ];
            } else {
                $message =  [
                    'text' => __('El slide no fue guardado correctamente'),
                    'type' => 'error',
                ];
            }
        }
        $this->set(compact('slide', 'message'));
        $this->set('_serialize', ['slide', 'message']);
    }

    public function preview() {
        $this->viewBuilder()->layout(false);
        
        if ($this->request->is("post")) {
            $image = $this->request->data["file"];
            
            $filename = "slide-" . $this->randomString();
            $url = WWW_ROOT . "tmp" . DS . $filename;
            $dst_final = WWW_ROOT . "img". DS . 'slides' . DS . $filename;
            
            while (file_exists($dst_final)) {
                $filename = "slide-" . $this->randomString();
                $url = WWW_ROOT . "tmp" . DS . $filename;
                $dst_final = WWW_ROOT . "img". DS . 'slides' . DS . $filename;
            }
            
            if (move_uploaded_file($image["tmp_name"], $url)) {
                $message = [
                    "type" => "success",
                    "text" => "El Slide fue subido con éxito"
                ];
            } else {
                $message = [
                    "type" => "error",
                    "text" => "El Slide no fue subido con éxito",
                ];
            }
            
            $this->set(compact("message", "filename"));
            $this->set("_serialize", ["message", "filename"]);
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
}
