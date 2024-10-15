package res

import "list"

#aws_glue_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_trigger")
	arn?:               string
	description?:       string
	enabled?:           bool
	id?:                string
	name!:              string
	schedule?:          string
	start_on_creation?: bool
	state?:             string
	tags?: [string]:     string
	tags_all?: [string]: string
	type!:          string
	workflow_name?: string
	actions?: #actions | [_, ...] & [...#actions]
	event_batching_condition?: #event_batching_condition | [...#event_batching_condition]
	predicate?: #predicate | list.MaxItems(1) & [...#predicate]
	timeouts?: #timeouts

	#actions: {
		arguments?: [string]: string
		crawler_name?:           string
		job_name?:               string
		security_configuration?: string
		timeout?:                number
		notification_property?: #actions.#notification_property | list.MaxItems(1) & [...#actions.#notification_property]

		#notification_property: notify_delay_after?: number
	}

	#event_batching_condition: {
		batch_size!:   number
		batch_window?: number
	}

	#predicate: {
		logical?: string
		conditions?: #predicate.#conditions | [_, ...] & [...#predicate.#conditions]

		#conditions: {
			crawl_state?:      string
			crawler_name?:     string
			job_name?:         string
			logical_operator?: string
			state?:            string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
