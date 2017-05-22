<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * TipoSugerencias Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Estados
 *
 * @method \App\Model\Entity\TipoSugerencia get($primaryKey, $options = [])
 * @method \App\Model\Entity\TipoSugerencia newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\TipoSugerencia[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\TipoSugerencia|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\TipoSugerencia patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\TipoSugerencia[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\TipoSugerencia findOrCreate($search, callable $callback = null, $options = [])
 */
class TipoSugerenciasTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config) {
        parent::initialize($config);

        $this->table('tipo_sugerencias');
        $this->displayField('descripcion');
        $this->primaryKey('id');

        $this->belongsTo('Estados', [
            'foreignKey' => 'estados_id',
            'joinType' => 'INNER'
        ]);
    }
}