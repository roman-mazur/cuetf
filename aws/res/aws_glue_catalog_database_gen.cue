package res

import "list"

#aws_glue_catalog_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_catalog_database")
	close({
		arn?:        string
		catalog_id?: string
		create_table_default_permission?: matchN(1, [#create_table_default_permission, [...#create_table_default_permission]])
		federated_database?: matchN(1, [#federated_database, list.MaxItems(1) & [...#federated_database]])
		target_database?: matchN(1, [#target_database, list.MaxItems(1) & [...#target_database]])
		description?:  string
		id?:           string
		location_uri?: string
		name!:         string
		parameters?: [string]: string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#create_table_default_permission: close({
		permissions?: [...string]
		principal?: matchN(1, [_#defs."/$defs/create_table_default_permission/$defs/principal", list.MaxItems(1) & [..._#defs."/$defs/create_table_default_permission/$defs/principal"]])
	})

	#federated_database: close({
		connection_name?: string
		identifier?:      string
	})

	#target_database: close({
		catalog_id!:    string
		database_name!: string
		region?:        string
	})

	_#defs: "/$defs/create_table_default_permission/$defs/principal": close({
		data_lake_principal_identifier?: string
	})
}
