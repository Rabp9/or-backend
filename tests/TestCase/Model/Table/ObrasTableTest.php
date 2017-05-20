<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\ObrasTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\ObrasTable Test Case
 */
class ObrasTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\ObrasTable
     */
    public $Obras;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.obras',
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
        $config = TableRegistry::exists('Obras') ? [] : ['className' => 'App\Model\Table\ObrasTable'];
        $this->Obras = TableRegistry::get('Obras', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Obras);

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
