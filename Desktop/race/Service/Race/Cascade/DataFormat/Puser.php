<?php
class Service_CS_Cascade_DataFormat_Puser extends Cascade_DB_SQL_DataFormat
{
    protected $master_dsn        = '';
    protected $slave_dsn         = '';
    protected $table_name        = 'users';
    protected $extra_dsn         = array();
    protected $primary_key       = 'user_id';
    protected $auto_increment    = true;
    protected $updated_at_column = 'mtime';
    protected $created_at_column = 'ctime';
    protected $field_names       = array(
        'user_id',
        'user_name',
        'pass',
        'mtime',
        'ctime',
    );

    protected $queries = array(
        'find_all' => array(
            'sql' => 'SELECT * FROM __TABLE_NAME__',
        ),

        'find_by_name' => array(
            'sql' => 'select * from __TABLE_NAME__ where user_name = :user_name',
        ),
        'find_by_id' => array(
            'sql' => 'select * from __TABLE_NAME__ where user_id = :user_id'
        ),

        'regist_user' => array(
            'sql' => 'insert into __TABLE_NAME__ (`user_id`, `user_name`, `pass`, `mtime`, `ctime`) values(NULL, :user_name, :pass, now(), now())'
        ),

        'create_table' => array(
            'sql' => "CREATE TABLE IF NOT EXISTS __TABLE_NAME__ (
                `user_id` int(10) NOT NULL auto_increment,
                `user_name` varchar(32) NOT NULL default '',
                `pass` varchar(32) NOT NULL default '',
                `mtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
                `ctime` datetime NOT NULL default '0000-00-00 00:00:00',
                PRIMARY KEY  (`user_id`),
                UNIQUE KEY `user_name` (`user_name`),
                KEY `login` (`user_name`)
                ) ENGINE=INNODB DEFAULT CHARSET=utf8;",
        ),
    );
}
