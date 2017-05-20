<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\ObraImagesTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\ObraImagesTable Test Case
 */
class ObraImagesTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\ObraImagesTable
     */
    public $ObraImages;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.obra_images',
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
        $config = TableRegistry::exists('ObraImages') ? [] : ['className' => 'App\Model\Table\ObraImagesTable'];
        $this->ObraImages = TableRegistry::get('ObraImages', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->ObraImages);

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
