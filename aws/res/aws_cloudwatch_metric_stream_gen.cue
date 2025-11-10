package res

#aws_cloudwatch_metric_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_metric_stream")
	close({
		arn?: string
		exclude_filter?: matchN(1, [#exclude_filter, [...#exclude_filter]])
		creation_date?:                   string
		firehose_arn!:                    string
		id?:                              string
		include_linked_accounts_metrics?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		last_update_date?: string
		name?:             string
		include_filter?: matchN(1, [#include_filter, [...#include_filter]])
		statistics_configuration?: matchN(1, [#statistics_configuration, [...#statistics_configuration]])
		name_prefix?:   string
		output_format!: string
		role_arn!:      string
		state?:         string
		timeouts?:      #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#exclude_filter: close({
		metric_names?: [...string]
		namespace!: string
	})

	#include_filter: close({
		metric_names?: [...string]
		namespace!: string
	})

	#statistics_configuration: close({
		include_metric!: matchN(1, [_#defs."/$defs/statistics_configuration/$defs/include_metric", [_, ...] & [..._#defs."/$defs/statistics_configuration/$defs/include_metric"]])
		additional_statistics!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/statistics_configuration/$defs/include_metric": close({
		metric_name!: string
		namespace!:   string
	})
}
