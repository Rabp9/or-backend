<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * DetalleSugerencias Model
 *
 * @property \Cake\ORM\Association\BelongsTo $DetalleSugerencias
 *
 * @method \App\Model\Entity\DetalleSugerencia get($primaryKey, $options = [])
 * @method \App\Model\Entity\DetalleSugerencia newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\DetalleSugerencia[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\DetalleSugerencia|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\DetalleSugerencia patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\DetalleSugerencia[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\DetalleSugerencia findOrCreate($search, callable $callback = null, $options = [])
 */
class DetalleSugerenciasTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config) {
        parent::initialize($config);

        $this->table('detalle_sugerencias');
        $this->displayField('email');
        $this->primaryKey('id');

        $this->belongsTo('TipoSugerencias', [
            'foreignKey' => 'tipo_sugerencia_id',
            'joinType' => 'INNER'
        ]);
    }
}
