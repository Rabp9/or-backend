<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Pages Controller
 *
 * @property \App\Model\Table\PagesTable $Pages
 */
class PagesController extends AppController
{
    public function initialize() {
        parent::initialize();
        $this->Auth->allow(['index', 'getPages', 'view']);
    }

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index() {
        $pages = $this->Pages->find()
            ->where(['estado_id' => 1]);

        $this->set(compact('pages'));
        $this->set('_serialize', ['pages']);
    }

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function getPages($type = null) {
        $type = $this->request->params['type'];
        $pages = $this->Pages->find()
            ->where(['estado_id' => 1, 'menu' => $type]);

        $this->set(compact('pages'));
        $this->set('_serialize', ['pages']);
    }
    
    /**
     * Get Admin method
     *
     * @return \Cake\Network\Response|null
     */
    public function getAdmin() {
        $pages = $this->Pages->find();

        $this->set(compact('pages'));
        $this->set('_serialize', ['pages']);
    }

    /**
     * View method
     *
     * @param string|null $id Page id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null) {
        $page = $this->Pages->get($id);

        $this->set(compact('page'));
        $this->set('_serialize', ['page']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $this->viewBuilder()->layout(false);
        
        $page = $this->Pages->newEntity();
        $page->estado_id = 1;
        
        if ($this->request->is('post')) {
            $page = $this->Pages->patchEntity($page, $this->request->data);
            
            if ($this->Pages->save($page)) {
                $message =  [
                    'text' => __('La página fue guardada correctamente'),
                    'type' => 'success',
                ];
            } else {
                $message =  [
                    'text' => __('La página no fue guardada correctamente'),
                    'type' => 'error',
                ];
            }
        }
        $this->set(compact('page', 'message'));
        $this->set('_serialize', ['page', 'message']);
    }
    
    public function upload() {
        if ($this->request->is("post")) {
            $image = $this->request->data["file"];
            $filename = "page-" . $this->randomString();
            $url = WWW_ROOT . 'img' . DS . 'paginas' . DS . $filename;
                      
            while (file_exists($url)) {
                $filename = "page-" . $this->randomString();
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
