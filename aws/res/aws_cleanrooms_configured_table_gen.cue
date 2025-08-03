package res

import "list"

#aws_cleanrooms_configured_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cleanrooms_configured_table")
	close({
		allowed_columns!: [...string]
		analysis_method!: string
		table_reference?: matchN(1, [#table_reference, list.MaxItems(1) & [_, ...] & [...#table_reference]])
		arn?:         string
		create_time?: string
		description?: string
		id?:          string
		name!:        string
		timeouts?:    #timeouts
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
		update_time?: string
	})

	#table_reference: close({
		database_name!: string
		table_name!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
