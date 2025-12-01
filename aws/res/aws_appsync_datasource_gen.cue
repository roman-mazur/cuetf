package res

import "list"

#aws_appsync_datasource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_appsync_datasource")
	close({
		api_id!:      string
		arn?:         string
		description?: string
		id?:          string
		dynamodb_config?: matchN(1, [#dynamodb_config, list.MaxItems(1) & [...#dynamodb_config]])
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		service_role_arn?: string
		type!:             string
		elasticsearch_config?: matchN(1, [#elasticsearch_config, list.MaxItems(1) & [...#elasticsearch_config]])
		event_bridge_config?: matchN(1, [#event_bridge_config, list.MaxItems(1) & [...#event_bridge_config]])
		http_config?: matchN(1, [#http_config, list.MaxItems(1) & [...#http_config]])
		lambda_config?: matchN(1, [#lambda_config, list.MaxItems(1) & [...#lambda_config]])
		opensearchservice_config?: matchN(1, [#opensearchservice_config, list.MaxItems(1) & [...#opensearchservice_config]])
		relational_database_config?: matchN(1, [#relational_database_config, list.MaxItems(1) & [...#relational_database_config]])
	})

	#dynamodb_config: close({
		delta_sync_config?: matchN(1, [_#defs."/$defs/dynamodb_config/$defs/delta_sync_config", list.MaxItems(1) & [..._#defs."/$defs/dynamodb_config/$defs/delta_sync_config"]])
		region?:                 string
		table_name!:             string
		use_caller_credentials?: bool
		versioned?:              bool
	})

	#elasticsearch_config: close({
		endpoint!: string
		region?:   string
	})

	#event_bridge_config: close({
		event_bus_arn!: string
	})

	#http_config: close({
		authorization_config?: matchN(1, [_#defs."/$defs/http_config/$defs/authorization_config", list.MaxItems(1) & [..._#defs."/$defs/http_config/$defs/authorization_config"]])
		endpoint!: string
	})

	#lambda_config: close({
		function_arn!: string
	})

	#opensearchservice_config: close({
		endpoint!: string
		region?:   string
	})

	#relational_database_config: close({
		http_endpoint_config?: matchN(1, [_#defs."/$defs/relational_database_config/$defs/http_endpoint_config", list.MaxItems(1) & [..._#defs."/$defs/relational_database_config/$defs/http_endpoint_config"]])
		source_type?: string
	})

	_#defs: "/$defs/dynamodb_config/$defs/delta_sync_config": close({
		base_table_ttl?:        number
		delta_sync_table_name!: string
		delta_sync_table_ttl?:  number
	})

	_#defs: "/$defs/http_config/$defs/authorization_config": close({
		aws_iam_config?: matchN(1, [_#defs."/$defs/http_config/$defs/authorization_config/$defs/aws_iam_config", list.MaxItems(1) & [..._#defs."/$defs/http_config/$defs/authorization_config/$defs/aws_iam_config"]])
		authorization_type?: string
	})

	_#defs: "/$defs/http_config/$defs/authorization_config/$defs/aws_iam_config": close({
		signing_region?:       string
		signing_service_name?: string
	})

	_#defs: "/$defs/relational_database_config/$defs/http_endpoint_config": close({
		aws_secret_store_arn!:  string
		database_name?:         string
		db_cluster_identifier!: string
		region?:                string
		schema?:                string
	})
}
