package res

import "list"

#aws_backup_framework: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_framework")
	close({
		arn?:               string
		creation_time?:     string
		deployment_status?: string
		description?:       string
		id?:                string
		name!:              string
		region?:            string
		control?: matchN(1, [#control, [_, ...] & [...#control]])
		status?:   string
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#control: close({
		input_parameter?: matchN(1, [_#defs."/$defs/control/$defs/input_parameter", [..._#defs."/$defs/control/$defs/input_parameter"]])
		scope?: matchN(1, [_#defs."/$defs/control/$defs/scope", list.MaxItems(1) & [..._#defs."/$defs/control/$defs/scope"]])
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/control/$defs/input_parameter": close({
		name?:  string
		value?: string
	})

	_#defs: "/$defs/control/$defs/scope": close({
		compliance_resource_ids?: [...string]
		compliance_resource_types?: [...string]
		tags?: [string]: string
	})
}
