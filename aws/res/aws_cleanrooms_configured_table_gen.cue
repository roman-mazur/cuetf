package res

import "list"

#aws_cleanrooms_configured_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cleanrooms_configured_table")
	allowed_columns!: [...string]
	analysis_method!: string
	arn?:             string
	create_time?:     string
	description?:     string
	id?:              string
	name!:            string
	tags?: [string]:     string
	tags_all?: [string]: string
	update_time?: string
	table_reference?: #table_reference | list.MaxItems(1) & [_, ...] & [...#table_reference]
	timeouts?: #timeouts

	#table_reference: {
		database_name!: string
		table_name!:    string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
