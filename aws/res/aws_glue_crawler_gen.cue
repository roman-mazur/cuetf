package res

import "list"

#aws_glue_crawler: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_crawler")
	arn?: string
	classifiers?: [...string]
	configuration?:          string
	database_name!:          string
	description?:            string
	id?:                     string
	name!:                   string
	role!:                   string
	schedule?:               string
	security_configuration?: string
	table_prefix?:           string
	tags?: [string]:     string
	tags_all?: [string]: string
	catalog_target?: #catalog_target | [...#catalog_target]
	delta_target?: #delta_target | [...#delta_target]
	dynamodb_target?: #dynamodb_target | [...#dynamodb_target]
	hudi_target?: #hudi_target | [...#hudi_target]
	iceberg_target?: #iceberg_target | [...#iceberg_target]
	jdbc_target?: #jdbc_target | [...#jdbc_target]
	lake_formation_configuration?: #lake_formation_configuration | list.MaxItems(1) & [...#lake_formation_configuration]
	lineage_configuration?: #lineage_configuration | list.MaxItems(1) & [...#lineage_configuration]
	mongodb_target?: #mongodb_target | [...#mongodb_target]
	recrawl_policy?: #recrawl_policy | list.MaxItems(1) & [...#recrawl_policy]
	s3_target?: #s3_target | [...#s3_target]
	schema_change_policy?: #schema_change_policy | list.MaxItems(1) & [...#schema_change_policy]

	#catalog_target: {
		connection_name?:     string
		database_name!:       string
		dlq_event_queue_arn?: string
		event_queue_arn?:     string
		tables!: [...string]
	}

	#delta_target: {
		connection_name?:           string
		create_native_delta_table?: bool
		delta_tables!: [...string]
		write_manifest!: bool
	}

	#dynamodb_target: {
		path!:      string
		scan_all?:  bool
		scan_rate?: number
	}

	#hudi_target: {
		connection_name?: string
		exclusions?: [...string]
		maximum_traversal_depth!: number
		paths!: [...string]
	}

	#iceberg_target: {
		connection_name?: string
		exclusions?: [...string]
		maximum_traversal_depth!: number
		paths!: [...string]
	}

	#jdbc_target: {
		connection_name!: string
		enable_additional_metadata?: [...string]
		exclusions?: [...string]
		path!: string
	}

	#lake_formation_configuration: {
		account_id?:                     string
		use_lake_formation_credentials?: bool
	}

	#lineage_configuration: crawler_lineage_settings?: string

	#mongodb_target: {
		connection_name!: string
		path!:            string
		scan_all?:        bool
	}

	#recrawl_policy: recrawl_behavior?: string

	#s3_target: {
		connection_name?:     string
		dlq_event_queue_arn?: string
		event_queue_arn?:     string
		exclusions?: [...string]
		path!:        string
		sample_size?: number
	}

	#schema_change_policy: {
		delete_behavior?: string
		update_behavior?: string
	}
}
