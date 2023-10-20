package res

#aws_cloudwatch_metric_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_metric_stream")
	arn?:                             string
	creation_date?:                   string
	firehose_arn:                     string
	id?:                              string
	include_linked_accounts_metrics?: bool
	last_update_date?:                string
	name?:                            string
	name_prefix?:                     string
	output_format:                    string
	role_arn:                         string
	state?:                           string
	tags?: [string]: string
	tags_all?: [string]: string
	exclude_filter?:           #exclude_filter | [...#exclude_filter]
	include_filter?:           #include_filter | [...#include_filter]
	statistics_configuration?: #statistics_configuration | [...#statistics_configuration]
	timeouts?:                 #timeouts

	#exclude_filter: {
		metric_names?: [...string]
		namespace: string
	}

	#include_filter: {
		metric_names?: [...string]
		namespace: string
	}

	#statistics_configuration: {
		additional_statistics: [...string]
		include_metric?: #statistics_configuration.#include_metric | [_, ...] & [...#statistics_configuration.#include_metric]

		#include_metric: {
			metric_name: string
			namespace:   string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
