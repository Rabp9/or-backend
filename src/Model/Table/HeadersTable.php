<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Headers Model
 *
 *
 * @method \App\Model\Entity\Header get($primaryKey, $options = [])
 * @method \App\Model\Entity\Header newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Header[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Header|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Header patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Header[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Header findOrCreate($search, callable $callback = null, $options = [])
 */
class HeadersTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config) {
        parent::initialize($config);

        $this->table('headers');
        $this->displayField('descripcion');
        $this->primaryKey('id');
    }
}
