<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\ConvocatoriasTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\ConvocatoriasTable Test Case
 */
class ConvocatoriasTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\ConvocatoriasTable
     */
    public $Convocatorias;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.convocatorias',
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
        $config = TableRegistry::exists('Convocatorias') ? [] : ['className' => 'App\Model\Table\ConvocatoriasTable'];
        $this->Convocatorias = TableRegistry::get('Convocatorias', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Convocatorias);

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
