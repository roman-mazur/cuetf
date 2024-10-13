package res

import "list"

#aws_prometheus_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_prometheus_workspace")
	alias?:               string
	arn?:                 string
	id?:                  string
	kms_key_arn?:         string
	prometheus_endpoint?: string
	tags?: [string]: string
	tags_all?: [string]: string
	logging_configuration?: #logging_configuration | list.MaxItems(1) & [...#logging_configuration]

	#logging_configuration: log_group_arn!: string
}
