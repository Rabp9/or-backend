<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\TipoSugerenciasTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\TipoSugerenciasTable Test Case
 */
class TipoSugerenciasTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\TipoSugerenciasTable
     */
    public $TipoSugerencias;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.tipo_sugerencias',
        'app.estados'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('TipoSugerencias') ? [] : ['className' => 'App\Model\Table\TipoSugerenciasTable'];
        $this->TipoSugerencias = TableRegistry::get('TipoSugerencias', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->TipoSugerencias);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test buildRules method
     *
     * @return void
     */
    public function testBuildRules()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
