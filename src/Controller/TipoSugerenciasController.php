<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * TipoSugerencias Controller
 *
 * @property \App\Model\Table\TipoSugerenciasTable $TipoSugerencias
 */
class TipoSugerenciasController extends AppController
{
    public function initialize() {
        parent::initialize();
        $this->Auth->allow(['index', 'sendMessage']);
    }

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index() {
        $tipo_sugerencias = $this->TipoSugerencias->find()
            ->where(['estado_id' => 1]);;

        $this->set(compact('tipo_sugerencias'));
        $this->set('_serialize', ['tipo_sugerencias']);
    }

    /**
     * Get Admin method
     *
     * @return \Cake\Network\Response|null
     */
    public function getAdmin() {
        $tipo_sugerencias = $this->TipoSugerencias->find()
            ->contain(['DetalleSugerencias']);

        $this->set(compact('tipo_sugerencias'));
        $this->set('_serialize', ['tipo_sugerencias']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $this->viewBuilder()->layout(false);
        $tipo_sugerencia = $this->TipoSugerencias->newEntity();
        $tipo_sugerencia->estado_id = 1;
        
        if ($this->request->is('post')) {
            $tipo_sugerencia = $this->TipoSugerencias->patchEntity($tipo_sugerencia, $this->request->data);
            if ($this->TipoSugerencias->save($tipo_sugerencia)) {
                $message =  [
                    'text' => __('El Tipo de Sugerencia fue guardado correctamente'),
                    'type' => 'success',
                ];
            } else {
                $message =  [
                    'text' => __('El Tipo de Sugerencia no fue guardado correctamente'),
                    'type' => 'error',
                ];
            }
        }
        $this->set(compact('tipo_sugerencia', 'message'));
        $this->set('_serialize', ['tipo_sugerencia', 'message']);
    }

    public function sendMessage() {
        $this->viewBuilder()->layout(false);
        $sugerencia = $this->request->getData();
        
        $tipo_sugerencia = $this->TipoSugerencias->get($sugerencia['tipo_sugerencia_id'], [
            'contain' => ['DetalleSugerencias']
        ]);
        
        foreach ($tipo_sugerencia->detalle_sugerencias as $detalle_sugerencia) {
            $para      = $detalle_sugerencia['email'];
            $titulo    = $sugerencia['asunto'];
            $mensaje   = $sugerencia['mensaje'];
            $cabeceras = 'From: ' . $sugerencia['email_remitente'] . "\r\n";

            if (mail($para, $titulo, $mensaje, $cabeceras)) {
                $message =  [
                      'text' => __('El mesnaje fue enviado correctamente.'),
                      'type' => 'success',
                ];
            } else {
                $message =  [
                    'text' => __('El mensaje no fue enviado correctamente'),
                    'type' => 'error',
                ];
            }
        }
        
        $this->set(compact('message'));
        $this->set('_serialize', ['message']);
    }
    
    
    public function removeDetalle() {
        $detalle_sugerencia_id = $this->request->getData('detalle_sugerencia_id');
        
        $detalle_sugerencia = $this->TipoSugerencias->DetalleSugerencias->get($detalle_sugerencia_id);
        
        if ($this->TipoSugerencias->DetalleSugerencias->delete($detalle_sugerencia)) {
            $message =  [
                  'text' => __('El email fue eliminado correctamente.'),
                  'type' => 'success',
            ];
        } else {
            $message =  [
                'text' => __('El email no fue eliminado correctamente'),
                'type' => 'error',
            ];
        }
        $this->set(compact('message'));
        $this->set('_serialize', ['message']);
    }
}
