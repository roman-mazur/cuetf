package res

import "list"

#aws_appintegrations_data_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appintegrations_data_integration")
	arn?:         string
	description?: string
	id?:          string
	kms_key!:     string
	name!:        string
	source_uri!:  string
	tags?: [string]: string
	tags_all?: [string]: string
	schedule_config?: #schedule_config | list.MaxItems(1) & [_, ...] & [...#schedule_config]

	#schedule_config: {
		first_execution_from!: string
		object!:               string
		schedule_expression!:  string
	}
}
