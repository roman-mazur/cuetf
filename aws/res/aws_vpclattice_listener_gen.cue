package res

import "list"

#aws_vpclattice_listener: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_listener")
	close({
		arn?:             string
		created_at?:      string
		id?:              string
		last_updated_at?: string
		listener_id?:     string
		name!:            string
		port?:            number
		default_action?: matchN(1, [#default_action, list.MaxItems(1) & [_, ...] & [...#default_action]])
		protocol!:           string
		region?:             string
		timeouts?:           #timeouts
		service_arn?:        string
		service_identifier?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#default_action: close({
		fixed_response?: matchN(1, [_#defs."/$defs/default_action/$defs/fixed_response", list.MaxItems(1) & [..._#defs."/$defs/default_action/$defs/fixed_response"]])
		forward?: matchN(1, [_#defs."/$defs/default_action/$defs/forward", [..._#defs."/$defs/default_action/$defs/forward"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/default_action/$defs/fixed_response": close({
		status_code!: number
	})

	_#defs: "/$defs/default_action/$defs/forward": close({
		target_groups?: matchN(1, [_#defs."/$defs/default_action/$defs/forward/$defs/target_groups", [..._#defs."/$defs/default_action/$defs/forward/$defs/target_groups"]])
	})

	_#defs: "/$defs/default_action/$defs/forward/$defs/target_groups": close({
		target_group_identifier?: string
		weight?:                  number
	})
}
