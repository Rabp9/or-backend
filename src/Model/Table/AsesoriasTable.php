<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Asesorias Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Estados
 *
 * @method \App\Model\Entity\Asesoria get($primaryKey, $options = [])
 * @method \App\Model\Entity\Asesoria newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Asesoria[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Asesoria|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Asesoria patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Asesoria[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Asesoria findOrCreate($search, callable $callback = null, $options = [])
 */
class AsesoriasTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config) {
        parent::initialize($config);

        $this->table('asesorias');
        $this->displayField('title');
        $this->primaryKey('id');

        $this->belongsTo('Estados', [
            'foreignKey' => 'estado_id',
            'joinType' => 'INNER'
        ]);
    }
}
