package res

import "list"

#aws_connect_quick_connect: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_quick_connect")
	arn?:              string
	description?:      string
	id?:               string
	instance_id!:      string
	name!:             string
	quick_connect_id?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	quick_connect_config?: #quick_connect_config | list.MaxItems(1) & [_, ...] & [...#quick_connect_config]

	#quick_connect_config: {
		quick_connect_type!: string
		phone_config?: #quick_connect_config.#phone_config | [...#quick_connect_config.#phone_config]
		queue_config?: #quick_connect_config.#queue_config | [...#quick_connect_config.#queue_config]
		user_config?: #quick_connect_config.#user_config | [...#quick_connect_config.#user_config]

		#phone_config: phone_number!: string

		#queue_config: {
			contact_flow_id!: string
			queue_id!:        string
		}

		#user_config: {
			contact_flow_id!: string
			user_id!:         string
		}
	}
}
