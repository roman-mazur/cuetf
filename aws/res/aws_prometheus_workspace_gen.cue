package res

import "list"

#aws_prometheus_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_prometheus_workspace")
	close({
		logging_configuration?: matchN(1, [#logging_configuration, list.MaxItems(1) & [...#logging_configuration]])
		alias?:               string
		arn?:                 string
		id?:                  string
		kms_key_arn?:         string
		prometheus_endpoint?: string
		region?:              string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#logging_configuration: close({
		log_group_arn!: string
	})
}
