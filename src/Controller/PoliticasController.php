<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Politicas Controller
 *
 * @property \App\Model\Table\PoliticasTable $Politicas
 */
class PoliticasController extends AppController
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
        $politicas = $this->Politicas->find()
            ->where(['estado_id' => 1]);
        
        $this->set(compact('politicas'));
        $this->set('_serialize', ['politicas']);
    }
    
    /**
     * Get Admin method
     *
     * @return \Cake\Network\Response|null
     */
    public function getAdmin() {
        $politicas = $this->Politicas->find();
        
        $this->set(compact('politicas'));
        $this->set('_serialize', ['politicas']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $this->viewBuilder()->layout(false);
        $politica = $this->Politicas->newEntity();
        $politica->estado_id = 1;
        
        if ($this->request->is('post')) {
            $politica = $this->Politicas->patchEntity($politica, $this->request->data);
            
            $src = WWW_ROOT . "tmp" . DS . $politica->url;
            $dst = WWW_ROOT . "img". DS . 'politicas' . DS . $politica->url;
            
            if ($this->Politicas->save($politica)) {
                // move file
                
                if (file_exists($src)) {
                    rename($src, $dst);
                }
                    
                $message =  [
                    'text' => __('La política fue guardada correctamente'),
                    'type' => 'success',
                ];
            } else {
                $message =  [
                    'text' => __('La política no fue guardada correctamente'),
                    'type' => 'error',
                ];
            }
        }
        $this->set(compact('politica', 'message'));
        $this->set('_serialize', ['politica', 'message']);
    }

    public function preview() {
        $this->viewBuilder()->layout(false);
        
        if ($this->request->is("post")) {
            $image = $this->request->data["file"];
            
            $filename = "politica-" . $this->randomString();
            $url = WWW_ROOT . "tmp" . DS . $filename;
            $dst_final = WWW_ROOT . "img". DS . 'politicas' . DS . $filename;
                  
            while (file_exists($dst_final)) {
                $filename = "politica-" . $this->randomString();
                $url = WWW_ROOT . "tmp" . DS . $filename;
                $dst_final = WWW_ROOT . "img". DS . 'politicas' . DS . $filename;
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
