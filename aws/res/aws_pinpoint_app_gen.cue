package res

import "list"

#aws_pinpoint_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_pinpoint_app")
	application_id?: string
	arn?:            string
	id?:             string
	name?:           string
	name_prefix?:    string
	tags?: [string]: string
	tags_all?: [string]: string
	campaign_hook?: #campaign_hook | list.MaxItems(1) & [...#campaign_hook]
	limits?:        #limits | list.MaxItems(1) & [...#limits]
	quiet_time?:    #quiet_time | list.MaxItems(1) & [...#quiet_time]

	#campaign_hook: {
		lambda_function_name?: string
		mode?:                 string
		web_url?:              string
	}

	#limits: {
		daily?:               number
		maximum_duration?:    number
		messages_per_second?: number
		total?:               number
	}

	#quiet_time: {
		end?:   string
		start?: string
	}
}
