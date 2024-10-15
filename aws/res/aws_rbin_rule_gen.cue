package res

import "list"

#aws_rbin_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rbin_rule")
	arn?:           string
	description?:   string
	id?:            string
	lock_end_time?: string
	lock_state?:    string
	resource_type!: string
	status?:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	lock_configuration?: #lock_configuration | list.MaxItems(1) & [...#lock_configuration]
	resource_tags?: #resource_tags | list.MaxItems(50) & [...#resource_tags]
	retention_period?: #retention_period | list.MaxItems(1) & [_, ...] & [...#retention_period]
	timeouts?: #timeouts

	#lock_configuration: {
		unlock_delay?: #lock_configuration.#unlock_delay | list.MaxItems(1) & [_, ...] & [...#lock_configuration.#unlock_delay]

		#unlock_delay: {
			unlock_delay_unit!:  string
			unlock_delay_value!: number
		}
	}

	#resource_tags: {
		resource_tag_key!:   string
		resource_tag_value?: string
	}

	#retention_period: {
		retention_period_unit!:  string
		retention_period_value!: number
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
