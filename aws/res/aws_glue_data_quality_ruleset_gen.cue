package res

import "list"

#aws_glue_data_quality_ruleset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glue_data_quality_ruleset")
	arn?:                   string
	created_on?:            string
	description?:           string
	id?:                    string
	last_modified_on?:      string
	name:                   string
	recommendation_run_id?: string
	ruleset:                string
	tags?: [string]: string
	tags_all?: [string]: string
	target_table?: #target_table | list.MaxItems(1) & [...#target_table]

	#target_table: {
		catalog_id?:   string
		database_name: string
		table_name:    string
	}
}
