package res

import "list"

#aws_resourcegroups_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_resourcegroups_group")
	arn?:         string
	description?: string
	id?:          string
	name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	configuration?: #configuration | [...#configuration]
	resource_query?: #resource_query | list.MaxItems(1) & [...#resource_query]
	timeouts?: #timeouts

	#configuration: {
		type!: string
		parameters?: #configuration.#parameters | [...#configuration.#parameters]

		#parameters: {
			name!: string
			values!: [...string]
		}
	}

	#resource_query: {
		query!: string
		type?:  string
	}

	#timeouts: {
		create?: string
		update?: string
	}
}
