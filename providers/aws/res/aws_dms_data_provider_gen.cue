package res

aws_dms_data_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_dms_data_provider")
	close({
		settings?: matchN(1, [#settings, [...#settings]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		creation_time?: string
		description?:   string
		engine!:        string
		name?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
		virtual?: bool
	})

	#settings: close({
		doc_db_settings?: matchN(1, [_#defs."/$defs/settings/$defs/doc_db_settings", [..._#defs."/$defs/settings/$defs/doc_db_settings"]])
		ibm_db2_luw_settings?: matchN(1, [_#defs."/$defs/settings/$defs/ibm_db2_luw_settings", [..._#defs."/$defs/settings/$defs/ibm_db2_luw_settings"]])
		ibm_db2_zos_settings?: matchN(1, [_#defs."/$defs/settings/$defs/ibm_db2_zos_settings", [..._#defs."/$defs/settings/$defs/ibm_db2_zos_settings"]])
		maria_db_settings?: matchN(1, [_#defs."/$defs/settings/$defs/maria_db_settings", [..._#defs."/$defs/settings/$defs/maria_db_settings"]])
		microsoft_sql_server_settings?: matchN(1, [_#defs."/$defs/settings/$defs/microsoft_sql_server_settings", [..._#defs."/$defs/settings/$defs/microsoft_sql_server_settings"]])
		mongo_db_settings?: matchN(1, [_#defs."/$defs/settings/$defs/mongo_db_settings", [..._#defs."/$defs/settings/$defs/mongo_db_settings"]])
		mysql_settings?: matchN(1, [_#defs."/$defs/settings/$defs/mysql_settings", [..._#defs."/$defs/settings/$defs/mysql_settings"]])
		oracle_settings?: matchN(1, [_#defs."/$defs/settings/$defs/oracle_settings", [..._#defs."/$defs/settings/$defs/oracle_settings"]])
		postgresql_settings?: matchN(1, [_#defs."/$defs/settings/$defs/postgresql_settings", [..._#defs."/$defs/settings/$defs/postgresql_settings"]])
		redshift_settings?: matchN(1, [_#defs."/$defs/settings/$defs/redshift_settings", [..._#defs."/$defs/settings/$defs/redshift_settings"]])
		sybase_ase_settings?: matchN(1, [_#defs."/$defs/settings/$defs/sybase_ase_settings", [..._#defs."/$defs/settings/$defs/sybase_ase_settings"]])
	})

	_#defs: "/$defs/settings/$defs/doc_db_settings": close({
		certificate_arn?: string
		database_name?:   string
		port?:            number
		server_name?:     string
		ssl_mode?:        string
	})

	_#defs: "/$defs/settings/$defs/ibm_db2_luw_settings": close({
		certificate_arn?:      string
		database_name?:        string
		encryption_algorithm?: number
		port?:                 number
		s3_access_role_arn?:   string
		s3_path?:              string
		security_mechanism?:   number
		server_name?:          string
		ssl_mode?:             string
	})

	_#defs: "/$defs/settings/$defs/ibm_db2_zos_settings": close({
		certificate_arn?:    string
		database_name?:      string
		port?:               number
		s3_access_role_arn?: string
		s3_path?:            string
		server_name?:        string
		ssl_mode?:           string
	})

	_#defs: "/$defs/settings/$defs/maria_db_settings": close({
		certificate_arn?:    string
		port?:               number
		s3_access_role_arn?: string
		s3_path?:            string
		server_name?:        string
		ssl_mode?:           string
	})

	_#defs: "/$defs/settings/$defs/microsoft_sql_server_settings": close({
		certificate_arn?:    string
		database_name?:      string
		port?:               number
		s3_access_role_arn?: string
		s3_path?:            string
		server_name?:        string
		ssl_mode?:           string
	})

	_#defs: "/$defs/settings/$defs/mongo_db_settings": close({
		auth_mechanism?:  string
		auth_source?:     string
		auth_type?:       string
		certificate_arn?: string
		database_name?:   string
		port?:            number
		server_name?:     string
		ssl_mode?:        string
	})

	_#defs: "/$defs/settings/$defs/mysql_settings": close({
		certificate_arn?:    string
		port?:               number
		s3_access_role_arn?: string
		s3_path?:            string
		server_name?:        string
		ssl_mode?:           string
	})

	_#defs: "/$defs/settings/$defs/oracle_settings": close({
		asm_server?:                                             string
		certificate_arn?:                                        string
		database_name?:                                          string
		port?:                                                   number
		s3_access_role_arn?:                                     string
		s3_path?:                                                string
		secrets_manager_oracle_asm_access_role_arn?:             string
		secrets_manager_oracle_asm_secret_id?:                   string
		secrets_manager_security_db_encryption_access_role_arn?: string
		secrets_manager_security_db_encryption_secret_id?:       string
		server_name?:                                            string
		ssl_mode?:                                               string
	})

	_#defs: "/$defs/settings/$defs/postgresql_settings": close({
		certificate_arn?:    string
		database_name?:      string
		port?:               number
		s3_access_role_arn?: string
		s3_path?:            string
		server_name?:        string
		ssl_mode?:           string
	})

	_#defs: "/$defs/settings/$defs/redshift_settings": close({
		database_name?:      string
		port?:               number
		s3_access_role_arn?: string
		s3_path?:            string
		server_name?:        string
	})

	_#defs: "/$defs/settings/$defs/sybase_ase_settings": close({
		certificate_arn?:  string
		database_name?:    string
		encrypt_password?: bool
		port?:             number
		server_name?:      string
		ssl_mode?:         string
	})
}
