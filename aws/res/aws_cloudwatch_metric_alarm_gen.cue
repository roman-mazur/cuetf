package res

import "list"

#aws_cloudwatch_metric_alarm: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatch_metric_alarm")
	close({
		actions_enabled?: bool
		alarm_actions?: [...string]
		alarm_description?:   string
		alarm_name!:          string
		arn?:                 string
		comparison_operator!: string
		datapoints_to_alarm?: number
		dimensions?: [string]: string
		evaluate_low_sample_count_percentiles?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		evaluation_periods!: number
		extended_statistic?: string
		id?:                 string
		metric_query?: matchN(1, [#metric_query, [...#metric_query]])
		insufficient_data_actions?: [...string]
		metric_name?: string
		namespace?:   string
		ok_actions?: [...string]
		period?:    number
		statistic?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		threshold?:           number
		threshold_metric_id?: string
		treat_missing_data?:  string
		unit?:                string
	})

	#metric_query: close({
		metric?: matchN(1, [_#defs."/$defs/metric_query/$defs/metric", list.MaxItems(1) & [..._#defs."/$defs/metric_query/$defs/metric"]])
		account_id?:  string
		expression?:  string
		id!:          string
		label?:       string
		period?:      number
		return_data?: bool
	})

	_#defs: "/$defs/metric_query/$defs/metric": close({
		dimensions?: [string]: string
		metric_name!: string
		namespace?:   string
		period!:      number
		stat!:        string
		unit?:        string
	})
}
