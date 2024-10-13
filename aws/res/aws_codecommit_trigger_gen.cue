package res

import "list"

#aws_codecommit_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codecommit_trigger")
	configuration_id?: string
	id?:               string
	repository_name!:  string
	trigger?: #trigger | list.MaxItems(10) & [_, ...] & [...#trigger]

	#trigger: {
		branches?: [...string]
		custom_data?:     string
		destination_arn!: string
		events!: [...string]
		name!: string
	}
}
