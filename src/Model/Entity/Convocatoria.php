<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Convocatoria Entity
 *
 * @property int $id
 * @property string $descripcion
 * @property \Cake\I18n\Time $fecha
 * @property string $documentacion
 * @property int $estado_id
 *
 * @property \App\Model\Entity\Estado $estado
 */
class Convocatoria extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        '*' => true
    ];
    
    protected $_virtual = ['fecha'];
    
    protected function _getFecha() {
        if (!isset($this->_properties['fecha'])) {
            return '';
        } elseif ($this->_properties['fecha'] == '') {
            return '';
        } elseif (!is_object($this->_properties['fecha'])) {
            return $this->_properties['fecha'];
        }
        return $this->_properties['fecha']->format('Y-m-d');
    }
}
