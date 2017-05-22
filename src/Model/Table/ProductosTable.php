<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Productos Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Estados
 * @property \Cake\ORM\Association\HasMany $ProductoImages
 *
 * @method \App\Model\Entity\Producto get($primaryKey, $options = [])
 * @method \App\Model\Entity\Producto newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Producto[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Producto|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Producto patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Producto[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Producto findOrCreate($search, callable $callback = null, $options = [])
 */
class ProductosTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config) {
        parent::initialize($config);

        $this->table('productos');
        $this->displayField('title');
        $this->primaryKey('id');
        $this->addBehavior('Tree');

        $this->belongsTo('Estados', [
            'foreignKey' => 'estado_id',
            'joinType' => 'INNER'
        ]);
        
        $this->hasMany('ProductoImages', [
            'foreignKey' => 'producto_id'
        ]);
        
    }
    
    public function findCustomTreeList(Query $query, array $options) {
        $results = $this->find()
            ->select(['id', 'lft', 'rght', 'title'])
            ->order(['lft' => 'ASC'])
            ->toArray();
        
        debug(sizeof($results));
        for ($i = 0; $i < sizeof($results); $i++) {
            if ($i != 0) {
                $v_current = $results[$i];
                for ($j = $i; $j == 0; $j--) {
                    $v_compare = $results[$j];
                    if ($v_current->lft < $_compare->rght) {
                        $results[$i]->title = '_' . $results[$i]->title;
                    }
                }
            }
        }
        return $results;
    }
}
