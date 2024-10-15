package res

import "list"

#aws_lambda_code_signing_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_code_signing_config")
	arn?:           string
	config_id?:     string
	description?:   string
	id?:            string
	last_modified?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	allowed_publishers?: #allowed_publishers | list.MaxItems(1) & [_, ...] & [...#allowed_publishers]
	policies?: #policies | list.MaxItems(1) & [...#policies]

	#allowed_publishers: signing_profile_version_arns!: [...string]

	#policies: untrusted_artifact_on_deployment!: string
}
