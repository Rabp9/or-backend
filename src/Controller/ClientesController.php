<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Clientes Controller
 *
 * @property \App\Model\Table\ClientesTable $Clientes
 */
class ClientesController extends AppController
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
        $this->viewBuilder()->layout(false);
        
        $clientes = $this->Clientes->find()
            ->where(['estado_id' => 1]);
                
        $this->set(compact('clientes'));
        $this->set('_serialize', ['clientes']);
    }

    /**
     * Get Admin method
     *
     * @return \Cake\Network\Response|null
     */
    public function getAdmin() {
        $this->viewBuilder()->layout(false);
        
        $clientes = $this->Clientes->find();
                
        $this->set(compact('clientes'));
        $this->set('_serialize', ['clientes']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $this->viewBuilder()->layout(false);
        $cliente = $this->Clientes->newEntity();
        $cliente->estado_id = 1;
        
        if ($this->request->is('post')) {
            $cliente = $this->Clientes->patchEntity($cliente, $this->request->data);
                        
            $dst = WWW_ROOT . "img". DS . 'clientes' . DS . $cliente->url;
            $src = WWW_ROOT . "tmp" . DS . $cliente->url;
            
            if ($this->Clientes->save($cliente)) {
                // move file
                
                if (file_exists($src)) {
                    rename($src, $dst);
                }
                    
                $message =  [
                    'text' => __('El cliente fue guardado correctamente'),
                    'type' => 'success',
                ];
            } else {
                $message =  [
                    'text' => __('El cliente no fue guardado correctamente'),
                    'type' => 'error',
                ];
            }
        }
        $this->set(compact('cliente', 'message'));
        $this->set('_serialize', ['cliente', 'message']);
    }

    public function preview() {
        $this->viewBuilder()->layout(false);
        
        if ($this->request->is("post")) {
            $image = $this->request->data["file"];
            
            $filename = "cliente-" . $this->randomString();
            $url = WWW_ROOT . "tmp" . DS . $filename;
            $dst_final = WWW_ROOT . "img". DS . 'clientes' . DS . $filename;
            
            while (file_exists($dst_final)) {
                $filename = "cliente-" . $this->randomString();
                $url = WWW_ROOT . "tmp" . DS . $filename;
                $dst_final = WWW_ROOT . "img". DS . 'clientes' . DS . $filename;
            }
            
            if (move_uploaded_file($image["tmp_name"], $url)) {
                $message = [
                    "type" => "success",
                    "text" => "El Logo fue subido con éxito"
                ];
            } else {
                $message = [
                    "type" => "error",
                    "text" => "El Logo no fue subido con éxito",
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
