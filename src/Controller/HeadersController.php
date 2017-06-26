<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Headers Controller
 *
 * @property \App\Model\Table\HeadersTable $Headers
 */
class HeadersController extends AppController
{
    public function initialize() {
        parent::initialize();
        $this->Auth->allow(['getByDescripcion']);
    }

    /**
     * Get Admin method
     *
     * @return \Cake\Network\Response|null
     */
    public function getAdmin() {
        $headers = $this->Headers->find();

        $this->set(compact('headers'));
        $this->set('_serialize', ['headers']);
    }

    /**
     * View method
     *
     * @param string|null $id Page id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function getByDescripcion($descripcion = null) {
        $header = $this->Headers->findByDescripcion($descripcion);

        $this->set(compact('header'));
        $this->set('_serialize', ['header']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $this->viewBuilder()->layout(false);
        
        if ($this->request->is('post')) {
            $header = $this->Headers->newEntity($this->request->getData());
            
            $src = WWW_ROOT . "tmp" . DS . $header->url;
            $dst = WWW_ROOT . "img". DS . 'headers' . DS . $header->url;
            
            if ($this->Headers->save($header)) {                // move file
                
                if (file_exists($src)) {
                    rename($src, $dst);
                }
                    
                $message =  [
                    'text' => __('El header fue guardado correctamente'),
                    'type' => 'success',
                ];
            } else {
                $message =  [
                    'text' => __('El header no fue guardado correctamente'),
                    'type' => 'error',
                ];
            }
        }
        $this->set(compact('header', 'message'));
        $this->set('_serialize', ['header', 'message']);
    }
    
    public function preview() {
        $this->viewBuilder()->layout(false);
        
        if ($this->request->is("post")) {
            $image = $this->request->data["file"];
            
            $filename = "header-" . $this->randomString();
            $url = WWW_ROOT . "tmp" . DS . $filename;
            $dst_final = WWW_ROOT . "img". DS . 'headers' . DS . $filename;
                  
            while (file_exists($dst_final)) {
                $filename = "header-" . $this->randomString();
                $url = WWW_ROOT . "tmp" . DS . $filename;
                $dst_final = WWW_ROOT . "img". DS . 'headers' . DS . $filename;
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
