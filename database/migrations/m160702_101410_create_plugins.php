<?php

use yii\db\Migration;

/**
 * Handles the creation for table `{{%module}}`.
 */
class m160702_101410_create_plugins extends Migration
{
    /**
     * @inheritdoc
     */
    public function up()
    {
        $this->createTable('{{%module}}', [
            'id' => $this->string(50)->notNull()->unique()->comment('标识'),
            'name' => $this->string(50)->notNull()->defaultValue(0),
            'app' => $this->string(50)->notNull()->comment('模块所属应用ID'),
            'status' => $this->smallInteger(1)->notNull()->defaultValue(0),
            'config' => $this->text()->comment('配置'),
            'created_at' => $this->integer(10)->notNull()->defaultValue(0),
            'updated_at' => $this->integer(10)->notNull()->defaultValue(0),
        ]);
        $this->addPrimaryKey('id', '{{%module}}', 'id');
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable('{{%module}}');
    }
}
