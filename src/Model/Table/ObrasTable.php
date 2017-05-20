<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Obras Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Estados
 *
 * @method \App\Model\Entity\Obra get($primaryKey, $options = [])
 * @method \App\Model\Entity\Obra newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Obra[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Obra|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Obra patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Obra[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Obra findOrCreate($search, callable $callback = null, $options = [])
 */
class ObrasTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config) {
        parent::initialize($config);

        $this->table('obras');
        $this->displayField('title');
        $this->primaryKey('id');

        $this->belongsTo('Estados', [
            'foreignKey' => 'estado_id',
            'joinType' => 'INNER'
        ]);
        
        $this->hasMany('ObraImages', [
            'foreignKey' => 'obra_id'
        ]);
    }
}
