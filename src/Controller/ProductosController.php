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
        $this->Auth->allow(['index', 'getPages', 'getLineasProductos', 'view', 
            'download', 'getTreeList', 'getRootProductos', 'getProductosMain', 'getPublic']);
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
        $this->Productos->recover();
        $productos = $this->Productos->find()
            ->contain(['ProductoImages']);
                
        $this->set(compact('productos'));
        $this->set('_serialize', ['productos']);
    }

    /**
     * Get Tree List method
     *
     * @return \Cake\Network\Response|null
     */
    public function getTreeList($spacer = null) {
        $spacer = $this->request->param('spacer');
        
        $this->viewBuilder()->layout(false);
        $this->Productos->recover();
        $productos = $this->Productos->find()
            ->where(['estado_id' => 1])
            ->select(['id', 'lft', 'rght', 'title', 'type'])
            ->order(['lft' => 'ASC'])
            ->toArray();
        
        for ($i = 0; $i < sizeof($productos); $i++) {
            if ($i != 0) {
                $v_current = $productos[$i];
                for ($j = $i - 1; $j >= 0; $j--) {
                    $v_compare = $productos[$j];
                    if ($v_current->lft < $v_compare->rght) {
                        $productos[$i]->title = $spacer . $productos[$i]->title;
                    }
                }
            }
        }
        
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
        
        $hijos = $this->Productos->find()
            ->where([
                'parent_id' => $producto->id,
                'estado_id' => 1
            ]);

        $this->set(compact('producto', 'hijos'));
        $this->set('_serialize', ['producto', 'hijos']);
    }
    
    public function getPublic($id = null) {
        $id = $this->request->query('id');
        $producto = $this->Productos->get($id, [
            'contain' => ['ProductoImages' => function($q) {
                return $q->where(['tipo' => 'G']);
            }]
        ]);
        
        $hijos = $this->Productos->find()
            ->where([
                'parent_id' => $producto->id,
                'estado_id' => 1
            ]);

        $this->set(compact('producto', 'hijos'));
        $this->set('_serialize', ['producto', 'hijos']);
    }
    
    public function getRootProductos() {
        $this->viewBuilder()->layout(false);
        
        $productos = $this->Productos->find()
            ->contain(['ProductoImages'])
            ->where([
                'estado_id' => 1,
                'parent_id is' => null
            ]);
                
        $this->set(compact('productos'));
        $this->set('_serialize', ['productos']);
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
            
            if ($producto->brochure) {
                // Brochure
                $dst_brochure = WWW_ROOT . "files". DS . 'brochures' . DS . $producto->brochure;
                $src_brochure = WWW_ROOT . "tmp" . DS . $producto->brochure;
            }
            
            if ($this->Productos->save($producto)) {
                // move file
                
                if ($producto->brochure) {
                    if (file_exists($src_brochure)) {
                        rename($src_brochure, $dst_brochure);
                    }
                }
                
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
     * Get Productos Main method
     *
     * @return \Cake\Network\Response|null
     */
    /*
    public function getProductosMain() {
        $this->viewBuilder()->layout(false);
        
        $productos = $this->Productos->find();
        $productos
            ->select([
                'id',
                'title',
                'resumen',
                'total_images' => $productos->func()->count('ProductoImages.id')
            ])
            ->leftJoinWith('ProductoImages')
            ->group([
                'Productos.id', 
                'Productos.title',
                'Productos.resumen'
            ])
            ->where(['estado_id' => 1])
            ->contain('ProductoImages')
            ->having(['total_images >' => 0]);
                
        $this->set(compact('productos'));
        $this->set('_serialize', ['productos']);
    }*/
    
    public function getProductosMain() {
        $this->viewBuilder()->layout(false);
        
        $productos = $this->Productos->find();
        
        $productos = $productos
            ->select([
                'id',
                'title',
                'resumen',
                'total_images' => $productos->func()->count('ProductoImages.id')
            ])
            ->leftJoinWith('ProductoImages')
            ->group([
                'Productos.id', 
                'Productos.title',
                'Productos.resumen'
            ])
            ->having(['total_images >' => 0])
            ->where(['estado_id' => 1, 'type' => 'L'])
            ->order('rand()')
            ->limit(3)->toArray();
        
        foreach ($productos as $producto) {
            $productoImage = $this->Productos->ProductoImages->find()
                ->where(['producto_id' => $producto->id])
                ->order('rand()')
                ->first();
            $producto->productoImage = $productoImage;
        }
        
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
    
    public function previewBrochure() {
        $this->viewBuilder()->layout(false);
        
        if ($this->request->is("post")) {
            $brochure = $this->request->data["file"];
            
            $filename = "doc-" . $this->randomString();
            $url = WWW_ROOT . "tmp" . DS . $filename;
            $dst_final = WWW_ROOT . "files". DS . 'brochures' . DS . $filename;
                        
            while (file_exists($dst_final)) {
                $filename = "doc-" . $this->randomString();
                $url = WWW_ROOT . "tmp" . DS . $filename;
                $dst_final = WWW_ROOT . "files". DS . 'brochures' . DS . $filename;
            }
            
            if (move_uploaded_file($brochure["tmp_name"], $url)) {
                $message = [
                    "type" => "success",
                    "text" => "El brochure fue subida con éxito"
                ];
            } else {
                $message = [
                    "type" => "error",
                    "text" => "El brochure no fue subida con éxito",
                ];
            }
            
            $this->set(compact("message", "filename"));
            $this->set("_serialize", ["message", "filename"]);
        }
    }
    
    public function download($id) {
        $producto = $this->Productos->get($id);
        $file = WWW_ROOT . "files". DS . 'brochures' . DS . $producto->brochure;
        $response = $this->response->withFile(
            $file,
            ['download' => true, 'name' => $producto->title . '.pdf']
        );
        return $response;
    }
    
    public function remove() {
        $producto = $this->Productos->get($this->request->getData('id'));
        
        if ($this->Productos->delete($producto)) {
            $message = [
                "type" => "success",
                "text" => "El producto fue eliminado con éxito"
            ];
        } else {
            $message = [
                "type" => "error",
                "text" => "El producto no fue eliminado con éxito",
            ];
        }
        
        $this->set(compact("message"));
    }
    
    public function upload() {
        if ($this->request->is("post")) {
            $image = $this->request->data["file"];
            $filename = "producto-" . $this->randomString();
            $url = WWW_ROOT . 'img' . DS . 'productos' . DS . $filename;
                      
            while (file_exists($url)) {
                $filename = "producto-" . $this->randomString();
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
}
