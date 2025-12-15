package res

import "list"

#aws_pinpoint_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_pinpoint_app")
	close({
		application_id?: string
		campaign_hook?: matchN(1, [#campaign_hook, list.MaxItems(1) & [...#campaign_hook]])
		arn?: string
		id?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		limits?: matchN(1, [#limits, list.MaxItems(1) & [...#limits]])
		name?:        string
		name_prefix?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		quiet_time?: matchN(1, [#quiet_time, list.MaxItems(1) & [...#quiet_time]])
	})

	#campaign_hook: close({
		lambda_function_name?: string
		mode?:                 string
		web_url?:              string
	})

	#limits: close({
		daily?:               number
		maximum_duration?:    number
		messages_per_second?: number
		total?:               number
	})

	#quiet_time: close({
		end?:   string
		start?: string
	})
}
