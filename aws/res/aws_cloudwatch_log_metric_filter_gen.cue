package res

import "list"

#aws_cloudwatch_log_metric_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_log_metric_filter")
	id?:                    string
	log_group_name:         string
	name:                   string
	pattern:                string
	metric_transformation?: #metric_transformation | list.MaxItems(1) & [_, ...] & [...#metric_transformation]

	#metric_transformation: {
		default_value?: string
		dimensions?: [string]: string
		name:      string
		namespace: string
		unit?:     string
		value:     string
	}
}
