package res

import "list"

#aws_codepipeline_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codepipeline_webhook")
	arn?:           string
	authentication: string
	id?:            string
	name:           string
	tags?: [string]: string
	tags_all?: [string]: string
	target_action:                 string
	target_pipeline:               string
	url?:                          string
	authentication_configuration?: #authentication_configuration | list.MaxItems(1) & [...#authentication_configuration]
	filter?:                       #filter | list.MaxItems(5) & [_, ...] & [...#filter]

	#authentication_configuration: {
		allowed_ip_range?: string
		secret_token?:     string
	}

	#filter: {
		json_path:    string
		match_equals: string
	}
}
