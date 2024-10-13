package res

#aws_appconfig_extension: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appconfig_extension")
	arn?:         string
	description?: string
	id?:          string
	name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	version?: number
	action_point?: #action_point | [_, ...] & [...#action_point]
	parameter?: #parameter | [...#parameter]

	#action_point: {
		point!: string
		action?: #action_point.#action | [_, ...] & [...#action_point.#action]

		#action: {
			description?: string
			name!:        string
			role_arn?:    string
			uri!:         string
		}
	}

	#parameter: {
		description?: string
		name!:        string
		required?:    bool
	}
}
