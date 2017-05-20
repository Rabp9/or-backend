<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * ObraImages Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Obras
 *
 * @method \App\Model\Entity\ObraImage get($primaryKey, $options = [])
 * @method \App\Model\Entity\ObraImage newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\ObraImage[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\ObraImage|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\ObraImage patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\ObraImage[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\ObraImage findOrCreate($search, callable $callback = null, $options = [])
 */
class ObraImagesTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config) {
        parent::initialize($config);

        $this->table('obra_images');
        $this->displayField('url');
        $this->primaryKey('id');

        $this->belongsTo('Obras', [
            'foreignKey' => 'obra_id',
            'joinType' => 'INNER'
        ]);
    }
}
