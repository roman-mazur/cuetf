package res

import "list"

#aws_glue_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_trigger")
	close({
		arn?:         string
		description?: string
		actions?: matchN(1, [#actions, [_, ...] & [...#actions]])
		event_batching_condition?: matchN(1, [#event_batching_condition, [...#event_batching_condition]])
		predicate?: matchN(1, [#predicate, list.MaxItems(1) & [...#predicate]])
		timeouts?:          #timeouts
		enabled?:           bool
		id?:                string
		name!:              string
		region?:            string
		schedule?:          string
		start_on_creation?: bool
		state?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!:          string
		workflow_name?: string
	})

	#actions: close({
		arguments?: [string]: string
		notification_property?: matchN(1, [_#defs."/$defs/actions/$defs/notification_property", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/notification_property"]])
		crawler_name?:           string
		job_name?:               string
		security_configuration?: string
		timeout?:                number
	})

	#event_batching_condition: close({
		batch_size!:   number
		batch_window?: number
	})

	#predicate: close({
		logical?: string
		conditions?: matchN(1, [_#defs."/$defs/predicate/$defs/conditions", [_, ...] & [..._#defs."/$defs/predicate/$defs/conditions"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/actions/$defs/notification_property": close({
		notify_delay_after?: number
	})

	_#defs: "/$defs/predicate/$defs/conditions": close({
		crawl_state?:      string
		crawler_name?:     string
		job_name?:         string
		logical_operator?: string
		state?:            string
	})
}
