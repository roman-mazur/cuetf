package res

#aws_appconfig_deployment_strategy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appconfig_deployment_strategy")
	close({
		arn?:                            string
		deployment_duration_in_minutes!: number
		description?:                    string
		final_bake_time_in_minutes?:     number
		growth_factor!:                  number
		growth_type?:                    string
		id?:                             string
		name!:                           string
		region?:                         string
		replicate_to!:                   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
