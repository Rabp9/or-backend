<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Utility\Hash;

/**
 * Clientes Controller
 *
 * @property \App\Model\Table\ClientesTable $Clientes
 */
class ClientesController extends AppController
{
    public function initialize() {
        parent::initialize();
        $this->Auth->allow(['index', 'getCiudades', 'getClientesByCiudad']);
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
    
    public function getClientesByCiudad($ciudad = null) {
        $ciudad = $this->request->param('ciudad');
        
        $clientes = $this->Clientes->find()
            ->where([
                'ciudad' => $ciudad,
                'estado_id' => 1
            ]);
        
        $this->set(compact('clientes'));
        $this->set('_serialize', ['clientes']);
    }


    public function getCiudades() {
        $this->viewBuilder()->layout(false);
        
        $clientes = $this->Clientes->find()
            ->distinct(['Clientes.ciudad'])
            ->select(['Clientes.ciudad'])
            ->where(['Clientes.estado_id' => 1])->toArray();
        
        $ciudades = Hash::extract($clientes, '{n}.ciudad');
        
        $this->set(compact('ciudades'));
        $this->set('_serialize', ['ciudades']);
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
            if ($this->Clientes->save($cliente)) {
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
}
