<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * RolUsers Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Roles
 * @property \Cake\ORM\Association\BelongsTo $Users
 *
 * @method \App\Model\Entity\RolUser get($primaryKey, $options = [])
 * @method \App\Model\Entity\RolUser newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\RolUser[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\RolUser|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\RolUser patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\RolUser[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\RolUser findOrCreate($search, callable $callback = null, $options = [])
 */
class RolUsersTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config) {
        parent::initialize($config);

        $this->table('rol_users');
        $this->displayField('id');
        $this->primaryKey(['id', 'role_id', 'user_id']);

        $this->belongsTo('Roles', [
            'foreignKey' => 'role_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Users', [
            'foreignKey' => 'user_id',
            'joinType' => 'INNER'
        ]);
    }
}
