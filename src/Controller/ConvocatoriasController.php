<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\I18n\FrozenDate;

/**
 * Convocatorias Controller
 *
 * @property \App\Model\Table\ConvocatoriasTable $Convocatorias
 */
class ConvocatoriasController extends AppController
{
    public function initialize() {
        parent::initialize();
        $this->Auth->allow(['index', 'download']);
    }

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index() {
        $convocatorias = $this->Convocatorias->find()
            ->where(['estado_id' => 1]);

        $this->set(compact('convocatorias'));
        $this->set('_serialize', ['convocatorias']);
    }

    /**
     * Get Admin method
     *
     * @return \Cake\Network\Response|null
     */
    public function getAdmin() {
        $convocatorias = $this->Convocatorias->find();

        $this->set(compact('convocatorias'));
        $this->set('_serialize', ['convocatorias']);
    }
    
    /**
     * Add method
     *
     * @return \Cake\Network\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $this->viewBuilder()->layout(false);
        $convocatoria = $this->Convocatorias->newEntity();
        $convocatoria->estado_id = 1;
        
        if ($this->request->is('post')) {
            $convocatoria = $this->Convocatorias->patchEntity($convocatoria, $this->request->data);
        
            $dst = WWW_ROOT . "files". DS . 'convocatorias' . DS . $convocatoria->documentacion;
            $src = WWW_ROOT . "tmp" . DS . $convocatoria->documentacion;

            if ($this->Convocatorias->save($convocatoria)) {
                // move file
                
                if (file_exists($src)) {
                    rename($src, $dst);
                }
                $message =  [
                    'text' => __('La convocatoria fue guardada correctamente'),
                    'type' => 'success',
                ];
            } else {
                $message =  [
                    'text' => __('La convocatoria no fue guardada correctamente'),
                    'type' => 'error',
                ];
            }
        }
        $this->set(compact('convocatoria', 'message'));
        $this->set('_serialize', ['convocatoria', 'message']);
    }

    public function preview() {
        $this->viewBuilder()->layout(false);
        
        if ($this->request->is("post")) {
            $documentacion = $this->request->data["file"];
            
            $filename = "doc-" . $this->randomString();
            $url = WWW_ROOT . "tmp" . DS . $filename;
            $dst_final = WWW_ROOT . "files". DS . 'convocatorias' . DS . $filename;
                        
            while (file_exists($dst_final)) {
                $filename = "doc-" . $this->randomString();
                $url = WWW_ROOT . "tmp" . DS . $filename;
                $dst_final = WWW_ROOT . "files". DS . 'convocatorias' . DS . $filename;
            }
            
            if (move_uploaded_file($documentacion["tmp_name"], $url)) {
                $message = [
                    "type" => "success",
                    "text" => "La convocatoria fue subida con éxito"
                ];
            } else {
                $message = [
                    "type" => "error",
                    "text" => "La convocatoria no fue subida con éxito",
                ];
            }
            
            $this->set(compact("message", "filename"));
            $this->set("_serialize", ["message", "filename"]);
        }
    }
    
    public function download($id) {
        $convocatoria = $this->Convocatorias->get($id);
        $file = WWW_ROOT . "files". DS . 'convocatorias' . DS . $convocatoria->documentacion;
        $response = $this->response->withFile(
            $file,
            ['download' => true, 'name' => $convocatoria->descripcion . '.pdf']
        );
        return $response;
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
