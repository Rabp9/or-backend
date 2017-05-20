<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Productos Controller
 *
 * @property \App\Model\Table\ProductosTable $Productos
 */
class ProductosController extends AppController
{
    public function initialize() {
        parent::initialize();
        $this->Auth->allow(['index', 'getPages', 'getLineasProductos', 'view']);
    }

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index() {
        $this->viewBuilder()->layout(false);
        
        $productos = $this->Productos->find()
            ->contain(['ProductoImages'])
            ->where(['estado_id' => 1]);
                
        $this->set(compact('productos'));
        $this->set('_serialize', ['productos']);
    }
    
    /**
     * Get Admin method
     *
     * @return \Cake\Network\Response|null
     */
    public function getAdmin() {
        $this->viewBuilder()->layout(false);
        
        $productos = $this->Productos->find()
            ->contain(['ProductoImages']);
                
        $this->set(compact('productos'));
        $this->set('_serialize', ['productos']);
    }

    /**
     * View method
     *
     * @param string|null $id Producto id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null) {
        $producto = $this->Productos->get($id, [
            'contain' => ['ProductoImages']
        ]);

        $this->set(compact('producto'));
        $this->set('_serialize', ['producto']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $this->viewBuilder()->layout(false);
        $producto = $this->Productos->newEntity();
        $producto->estado_id = 1;
        
        if ($this->request->is('post')) {
            
            $producto = $this->Productos->patchEntity($producto, $this->request->data);
            if ($this->Productos->save($producto)) {
                // move file
                foreach ($producto->producto_images as $producto_image) {
                    $src = WWW_ROOT . "tmp" . DS . $producto_image->url;
                    $dst = WWW_ROOT . "img". DS . 'productos' . DS . $producto_image->url;
                    if (file_exists($src)) {
                        rename($src, $dst);
                    }
                }             
                
                $message =  [
                    'text' => __('El producto fue guardado correctamente'),
                    'type' => 'success',
                ];
            } else {
                $message =  [
                    'text' => __('El producto no fue guardado correctamente'),
                    'type' => 'error',
                ];
            }
        }
        $this->set(compact('producto', 'message'));
        $this->set('_serialize', ['producto', 'message']);
    }

    /**
     * Get Lineas Productos method
     *
     * @return \Cake\Network\Response|null
     */
    public function getLineasProductos() {
        $this->viewBuilder()->layout(false);
        
        $productos = $this->Productos->find()
            ->contain(['ProductoImages'])
            ->where(['estado_id' => 1, 'type' => 'L']);
                
        $this->set(compact('productos'));
        $this->set('_serialize', ['productos']);
    }
    
    /**
     * Get Pages method
     *
     * @return \Cake\Network\Response|null
     */
    public function getPages() {
        $this->viewBuilder()->layout(false);
        
        $producto_pages = $this->Productos->find()
            ->contain(['ProductoImages'])
            ->where(['estado_id' => 1, 'type' => 'P']);
                
        $this->set(compact('producto_pages'));
        $this->set('_serialize', ['producto_pages']);
    }
    
    public function preview() {
        $this->viewBuilder()->layout(false);
        
        if ($this->request->is("post")) {
            $filenames = array();
            $images = $this->request->data["files"];
            
            foreach ($images as $image) {
                $filename = "producto-" . $this->randomString();
                $url = WWW_ROOT . "tmp" . DS . $filename;
                $dst_final = WWW_ROOT . "img". DS . 'productos' . DS . $filename;
                
                while (file_exists($dst_final)) {
                    $filename = "producto-" . $this->randomString();
                    $url = WWW_ROOT . "tmp" . DS . $filename;
                    $dst_final = WWW_ROOT . "img". DS . 'productos' . DS . $filename;
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
        
        $producto_image = $this->Productos->ProductoImages->get($id);
        if ($this->Productos->ProductoImages->delete($producto_image)) {
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
