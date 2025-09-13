package res

import "list"

#aws_quicksight_data_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_data_source")
	close({
		arn?:            string
		aws_account_id?: string
		data_source_id!: string
		id?:             string
		credentials?: matchN(1, [#credentials, list.MaxItems(1) & [...#credentials]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		tags?: [string]: string
		parameters?: matchN(1, [#parameters, list.MaxItems(1) & [_, ...] & [...#parameters]])
		tags_all?: [string]: string
		permission?: matchN(1, [#permission, list.MaxItems(64) & [...#permission]])
		ssl_properties?: matchN(1, [#ssl_properties, list.MaxItems(1) & [...#ssl_properties]])
		type!: string
		vpc_connection_properties?: matchN(1, [#vpc_connection_properties, list.MaxItems(1) & [...#vpc_connection_properties]])
	})

	#credentials: close({
		credential_pair?: matchN(1, [_#defs."/$defs/credentials/$defs/credential_pair", list.MaxItems(1) & [..._#defs."/$defs/credentials/$defs/credential_pair"]])
		copy_source_arn?: string
		secret_arn?:      string
	})

	#parameters: close({
		amazon_elasticsearch?: matchN(1, [_#defs."/$defs/parameters/$defs/amazon_elasticsearch", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/amazon_elasticsearch"]])
		athena?: matchN(1, [_#defs."/$defs/parameters/$defs/athena", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/athena"]])
		aurora?: matchN(1, [_#defs."/$defs/parameters/$defs/aurora", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/aurora"]])
		aurora_postgresql?: matchN(1, [_#defs."/$defs/parameters/$defs/aurora_postgresql", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/aurora_postgresql"]])
		aws_iot_analytics?: matchN(1, [_#defs."/$defs/parameters/$defs/aws_iot_analytics", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/aws_iot_analytics"]])
		databricks?: matchN(1, [_#defs."/$defs/parameters/$defs/databricks", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/databricks"]])
		jira?: matchN(1, [_#defs."/$defs/parameters/$defs/jira", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/jira"]])
		maria_db?: matchN(1, [_#defs."/$defs/parameters/$defs/maria_db", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/maria_db"]])
		mysql?: matchN(1, [_#defs."/$defs/parameters/$defs/mysql", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/mysql"]])
		oracle?: matchN(1, [_#defs."/$defs/parameters/$defs/oracle", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/oracle"]])
		postgresql?: matchN(1, [_#defs."/$defs/parameters/$defs/postgresql", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/postgresql"]])
		presto?: matchN(1, [_#defs."/$defs/parameters/$defs/presto", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/presto"]])
		rds?: matchN(1, [_#defs."/$defs/parameters/$defs/rds", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/rds"]])
		redshift?: matchN(1, [_#defs."/$defs/parameters/$defs/redshift", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/redshift"]])
		s3?: matchN(1, [_#defs."/$defs/parameters/$defs/s3", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/s3"]])
		service_now?: matchN(1, [_#defs."/$defs/parameters/$defs/service_now", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/service_now"]])
		snowflake?: matchN(1, [_#defs."/$defs/parameters/$defs/snowflake", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/snowflake"]])
		spark?: matchN(1, [_#defs."/$defs/parameters/$defs/spark", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/spark"]])
		sql_server?: matchN(1, [_#defs."/$defs/parameters/$defs/sql_server", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/sql_server"]])
		teradata?: matchN(1, [_#defs."/$defs/parameters/$defs/teradata", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/teradata"]])
		twitter?: matchN(1, [_#defs."/$defs/parameters/$defs/twitter", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/twitter"]])
	})

	#permission: close({
		actions!: [...string]
		principal!: string
	})

	#ssl_properties: close({
		disable_ssl!: bool
	})

	#vpc_connection_properties: close({
		vpc_connection_arn!: string
	})

	_#defs: "/$defs/credentials/$defs/credential_pair": close({
		password!: string
		username!: string
	})

	_#defs: "/$defs/parameters/$defs/amazon_elasticsearch": close({
		domain!: string
	})

	_#defs: "/$defs/parameters/$defs/athena": close({
		work_group?: string
	})

	_#defs: "/$defs/parameters/$defs/aurora": close({
		database!: string
		host!:     string
		port!:     number
	})

	_#defs: "/$defs/parameters/$defs/aurora_postgresql": close({
		database!: string
		host!:     string
		port!:     number
	})

	_#defs: "/$defs/parameters/$defs/aws_iot_analytics": close({
		data_set_name!: string
	})

	_#defs: "/$defs/parameters/$defs/databricks": close({
		host!:              string
		port!:              number
		sql_endpoint_path!: string
	})

	_#defs: "/$defs/parameters/$defs/jira": close({
		site_base_url!: string
	})

	_#defs: "/$defs/parameters/$defs/maria_db": close({
		database!: string
		host!:     string
		port!:     number
	})

	_#defs: "/$defs/parameters/$defs/mysql": close({
		database!: string
		host!:     string
		port!:     number
	})

	_#defs: "/$defs/parameters/$defs/oracle": close({
		database!: string
		host!:     string
		port!:     number
	})

	_#defs: "/$defs/parameters/$defs/postgresql": close({
		database!: string
		host!:     string
		port!:     number
	})

	_#defs: "/$defs/parameters/$defs/presto": close({
		catalog!: string
		host!:    string
		port!:    number
	})

	_#defs: "/$defs/parameters/$defs/rds": close({
		database!:    string
		instance_id!: string
	})

	_#defs: "/$defs/parameters/$defs/redshift": close({
		cluster_id?: string
		database!:   string
		host?:       string
		port?:       number
	})

	_#defs: "/$defs/parameters/$defs/s3": close({
		manifest_file_location?: matchN(1, [_#defs."/$defs/parameters/$defs/s3/$defs/manifest_file_location", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/parameters/$defs/s3/$defs/manifest_file_location"]])
		role_arn?: string
	})

	_#defs: "/$defs/parameters/$defs/s3/$defs/manifest_file_location": close({
		bucket!: string
		key!:    string
	})

	_#defs: "/$defs/parameters/$defs/service_now": close({
		site_base_url!: string
	})

	_#defs: "/$defs/parameters/$defs/snowflake": close({
		database!:  string
		host!:      string
		warehouse!: string
	})

	_#defs: "/$defs/parameters/$defs/spark": close({
		host!: string
		port!: number
	})

	_#defs: "/$defs/parameters/$defs/sql_server": close({
		database!: string
		host!:     string
		port!:     number
	})

	_#defs: "/$defs/parameters/$defs/teradata": close({
		database!: string
		host!:     string
		port!:     number
	})

	_#defs: "/$defs/parameters/$defs/twitter": close({
		max_rows!: number
		query!:    string
	})
}
