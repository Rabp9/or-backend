<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Slides Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Estados
 *
 * @method \App\Model\Entity\Slide get($primaryKey, $options = [])
 * @method \App\Model\Entity\Slide newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Slide[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Slide|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Slide patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Slide[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Slide findOrCreate($search, callable $callback = null, $options = [])
 */
class SlidesTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config) {
        parent::initialize($config);

        $this->table('slides');
        $this->displayField('titulo');
        $this->primaryKey('id');

        $this->belongsTo('Estados', [
            'foreignKey' => 'estado_id',
            'joinType' => 'INNER'
        ]);
    }
}
