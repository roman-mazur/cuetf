package res

import "list"

#aws_backup_framework: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_backup_framework")
	arn?:               string
	creation_time?:     string
	deployment_status?: string
	description?:       string
	id?:                string
	name:               string
	status?:            string
	tags?: [string]: string
	tags_all?: [string]: string
	control?:  #control | [_, ...] & [...#control]
	timeouts?: #timeouts

	#control: {
		name:             string
		input_parameter?: #control.#input_parameter | [...#control.#input_parameter]
		scope?:           #control.#scope | list.MaxItems(1) & [...#control.#scope]

		#input_parameter: {
			name?:  string
			value?: string
		}

		#scope: {
			compliance_resource_ids?: [...string]
			compliance_resource_types?: [...string]
			tags?: [string]: string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
