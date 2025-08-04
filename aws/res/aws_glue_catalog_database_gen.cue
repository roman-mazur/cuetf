package res

import "list"

#aws_glue_catalog_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_catalog_database")
	close({
		arn?:         string
		catalog_id?:  string
		description?: string
		id?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		location_uri?: string
		create_table_default_permission?: matchN(1, [#create_table_default_permission, [...#create_table_default_permission]])
		federated_database?: matchN(1, [#federated_database, list.MaxItems(1) & [...#federated_database]])
		name!: string
		parameters?: [string]: string
		tags?: [string]:       string
		tags_all?: [string]:   string
		target_database?: matchN(1, [#target_database, list.MaxItems(1) & [...#target_database]])
	})

	#create_table_default_permission: close({
		principal?: matchN(1, [_#defs."/$defs/create_table_default_permission/$defs/principal", list.MaxItems(1) & [..._#defs."/$defs/create_table_default_permission/$defs/principal"]])
		permissions?: [...string]
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
