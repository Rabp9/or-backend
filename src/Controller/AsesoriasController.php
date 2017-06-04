<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Asesorias Controller
 *
 * @property \App\Model\Table\AsesoriasTable $Asesorias
 */
class AsesoriasController extends AppController
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
        $asesorias = $this->Asesorias->find()
            ->where(['estado_id' => 1]);

        $this->set(compact('asesorias'));
        $this->set('_serialize', ['asesorias']);
    }
    
    /**
     * Get Admin method
     *
     * @return \Cake\Network\Response|null
     */
    public function getAdmin() {
        $asesorias = $this->Asesorias->find();

        $this->set(compact('asesorias'));
        $this->set('_serialize', ['asesorias']);
    }

    /**
     * View method
     *
     * @param string|null $id Page id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null) {
        $asesoria = $this->Asesorias->get($id);

        $this->set(compact('asesoria'));
        $this->set('_serialize', ['asesoria']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $this->viewBuilder()->layout(false);
        
        $asesoria = $this->Asesorias->newEntity();
        $asesoria->estado_id = 1;
        
        if ($this->request->is('post')) {
            $asesoria = $this->Asesorias->patchEntity($asesoria, $this->request->data);
            
            if ($this->Asesorias->save($asesoria)) {
                $message =  [
                    'text' => __('La asesoría fue guardada correctamente'),
                    'type' => 'success',
                ];
            } else {
                $message =  [
                    'text' => __('La asesoría no fue guardada correctamente'),
                    'type' => 'error',
                ];
            }
        }
        $this->set(compact('asesoria', 'message'));
        $this->set('_serialize', ['asesoria', 'message']);
    }
    
    public function upload() {
        if ($this->request->is("post")) {
            $image = $this->request->data["file"];
            $filename = "asesoria-" . $this->randomString();
            $url = WWW_ROOT . 'img' . DS . 'asesorias' . DS . $filename;
                      
            while (file_exists($url)) {
                $filename = "asesoria-" . $this->randomString();
                $url = WWW_ROOT . "tmp" . DS . $filename;
            }
            
            if (move_uploaded_file($image["tmp_name"], $url)) {
                $message = [
                    "type" => "success",
                    "text" => "La imagen fue subida con éxito"
                ];
            } else {
                $message = [
                    "type" => "error",
                    "text" => "La imagen no fue subida con éxito",
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
