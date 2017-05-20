<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\PoliticasTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\PoliticasTable Test Case
 */
class PoliticasTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\PoliticasTable
     */
    public $Politicas;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.politicas',
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
        $config = TableRegistry::exists('Politicas') ? [] : ['className' => 'App\Model\Table\PoliticasTable'];
        $this->Politicas = TableRegistry::get('Politicas', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Politicas);

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
