package res

#elasticstack_apm_agent_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_apm_agent_configuration")
	close({
		agent_name?:          string
		id?:                  string
		service_environment?: string
		service_name!:        string
		settings!: [string]: string
	})
}
