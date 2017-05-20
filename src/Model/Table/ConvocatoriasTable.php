<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Convocatorias Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Estados
 *
 * @method \App\Model\Entity\Convocatoria get($primaryKey, $options = [])
 * @method \App\Model\Entity\Convocatoria newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Convocatoria[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Convocatoria|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Convocatoria patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Convocatoria[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Convocatoria findOrCreate($search, callable $callback = null, $options = [])
 */
class ConvocatoriasTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config) {
        parent::initialize($config);

        $this->table('convocatorias');
        $this->displayField('id');
        $this->primaryKey('id');

        $this->belongsTo('Estados', [
            'foreignKey' => 'estado_id',
            'joinType' => 'INNER'
        ]);
    }
}
