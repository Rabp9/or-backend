<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Filesystem\Folder;
use Cake\Filesystem\File;
use Cake\ORM\TableRegistry;

/**
 * Slides Controller
 *
 * @property \App\Model\Table\SlidesTable $Slides
 */
class SlidesController extends AppController
{
    public function initialize() {
        parent::initialize();
        $this->Auth->allow(['index', 'getHeader', 'cleanImages']);
    }

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index() {
        $slides = $this->Slides->find()
            ->where(['estado_id' => 1])
            ->order(['orden' => 'ASC']);
                
        $this->set(compact('slides'));
        $this->set('_serialize', ['slides']);
    }
    
    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function getAdmin() {        
        $slides = $this->Slides->find()
            ->order(['orden' => 'ASC']);
                
        $this->set(compact('slides'));
        $this->set('_serialize', ['slides']);
    }

    public function getHeader() {
        $path = 'img/headers/';
        $dir = new Folder($path);
        $files = $dir->find();
        
        $file = $path . $files[rand(0, sizeof($files) - 1)];
        
        $this->set(compact('file'));
        $this->set('_serialize', ['file']);
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
    
    public function saveMany() {
        $slides = $this->Slides->newEntities($this->request->getData('slides'));

        $r = true;
        foreach ($slides as $slide) {
            if (!$this->Slides->save($slide)) {
                $r = false;
            }
        }
        
        if ($r) {
            $message = [
                "type" => "success",
                "text" => "El orden de los slides fueron guardados correctamente"
            ];
        } else {
            $message = [
                "type" => "error",
                "text" => "El orden de los slides no fueron guardados correctamente"
            ];
        }
        
        $this->set(compact('slides', 'message'));
        $this->set('_serialize', ['slide', 'message']);
    }
    
    public function cleanImages() {
        $this->viewBuilder()->setLayout(false);
        
        // tmp
        $tmp = new Folder('tmp');
        
        $files = $tmp->find();
        
        foreach ($files as $file) {
            $file = new File($tmp->pwd() . DS . $file);
            $file->delete();
        }
        
        // Brochures
        $productosTable = TableRegistry::get('Productos');
        $brochures = new Folder('files' . DS . 'brochures');
        $files = $brochures->find();
        
        foreach ($files as $file) {
            $producto = $productosTable->find()
                ->where(['brochure' => $file])
                ->first();
            if ($producto === null) {
                $file = new File($brochures->pwd() . DS . $file);
                $file->delete();
            }
        }
        
        // Convocatorias
        $convocatoriasTable = TableRegistry::get('Convocatorias');
        $convocatorias = new Folder('files' . DS . 'convocatorias');
        $files = $convocatorias->find();
        
        foreach ($files as $file) {
            $convocatoria = $convocatoriasTable->find()
                ->where(['documentacion' => $file])
                ->first();
            if ($convocatoria === null) {
                $file = new File($convocatorias->pwd() . DS . $file);
                $file->delete();
            }
        }
        
        // Obras
        $obraImagesTable = TableRegistry::get('ObraImages');
        $obraImages = new Folder('img' . DS . 'obras');
        $files = $obraImages->find();
        
        foreach ($files as $file) {
            $obraImage = $obraImagesTable->find()
                ->where(['url' => $file])
                ->first();
            if ($obraImage === null) {
                $file = new File($obraImages->pwd() . DS . $file);
                $file->delete();
            }
        }
        
        // Politicas
        $politicasTable = TableRegistry::get('Politicas');
        $politicas = new Folder('img' . DS . 'politicas');
        $files = $politicas->find();
        
        foreach ($files as $file) {
            $politica = $politicasTable->find()
                ->where(['url' => $file])
                ->first();
            if ($politica === null) {
                $file = new File($politicas->pwd() . DS . $file);
                $file->delete();
            }
        }
        
        // Productos
        $productoImagesTable = TableRegistry::get('ProductoImages');
        $productoImages = new Folder('img' . DS . 'productos');
        $files = $productoImages->find();
        
        foreach ($files as $file) {
            $productoImage = $productoImagesTable->find()
                ->where(['url' => $file])
                ->first();
            if ($productoImage === null) {
                $file = new File($productoImages->pwd() . DS . $file);
                $file->delete();
            }
        }
        
        // Slides
        $slidesTable = TableRegistry::get('Slides');
        $slides = new Folder('img' . DS . 'slides');
        $files = $slides->find();
        
        foreach ($files as $file) {
            $slide = $slidesTable->find()
                ->where(['url' => $file])
                ->first();
            if ($slide === null) {
                $file = new File($slides->pwd() . DS . $file);
                $file->delete();
            }
        }
        
        // Headers
        $headersTable = TableRegistry::get('Headers');
        $headers = new Folder('img' . DS . 'headers');
        $files = $headers->find();
        
        foreach ($files as $file) {
            $header = $headersTable->find()
                ->where(['url' => $file])
                ->first();
            if ($header === null) {
                $file = new File($headers->pwd() . DS . $file);
                $file->delete();
            }
        }
        
        // Productos BD
        $productoImages = new Folder('img' . DS . 'productos');
        $productoImages_sql = $productoImagesTable->find()->toArray();
        
        foreach ($productoImages_sql as $productoImage) {
            $aux = new File($productoImages->pwd() . DS . $productoImage->url);
            if (!$aux->exists()) {
                $productoImagesTable->delete($productoImage);
            }
        }

        echo 'All done';
        $this->render(false);
    }
}
