<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Politicas Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Estados
 *
 * @method \App\Model\Entity\Politica get($primaryKey, $options = [])
 * @method \App\Model\Entity\Politica newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Politica[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Politica|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Politica patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Politica[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Politica findOrCreate($search, callable $callback = null, $options = [])
 */
class PoliticasTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config) {
        parent::initialize($config);

        $this->table('politicas');
        $this->displayField('title');
        $this->primaryKey('id');

        $this->belongsTo('Estados', [
            'foreignKey' => 'estado_id',
            'joinType' => 'INNER'
        ]);
    }
}
