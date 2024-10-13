package res

import "list"

#aws_glue_catalog_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glue_catalog_database")
	arn?:          string
	catalog_id?:   string
	description?:  string
	id?:           string
	location_uri?: string
	name!:         string
	parameters?: [string]: string
	tags?: [string]:       string
	tags_all?: [string]:   string
	create_table_default_permission?: #create_table_default_permission | [...#create_table_default_permission]
	federated_database?: #federated_database | list.MaxItems(1) & [...#federated_database]
	target_database?: #target_database | list.MaxItems(1) & [...#target_database]

	#create_table_default_permission: {
		permissions?: [...string]
		principal?: #create_table_default_permission.#principal | list.MaxItems(1) & [...#create_table_default_permission.#principal]

		#principal: data_lake_principal_identifier?: string
	}

	#federated_database: {
		connection_name?: string
		identifier?:      string
	}

	#target_database: {
		catalog_id!:    string
		database_name!: string
		region?:        string
	}
}
