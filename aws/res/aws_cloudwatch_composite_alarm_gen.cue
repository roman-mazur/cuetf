package res

import "list"

#aws_cloudwatch_composite_alarm: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_composite_alarm")
	close({
		actions_enabled?: bool
		alarm_actions?: [...string]
		alarm_description?: string
		alarm_name!:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		alarm_rule!: string
		actions_suppressor?: matchN(1, [#actions_suppressor, list.MaxItems(1) & [...#actions_suppressor]])
		arn?: string
		id?:  string
		insufficient_data_actions?: [...string]
		ok_actions?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#actions_suppressor: close({
		alarm!:            string
		extension_period!: number
		wait_period!:      number
	})
}
