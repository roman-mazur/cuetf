package res

#elasticstack_apm_agent_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_apm_agent_configuration")
	close({
		// The agent name is used by the UI to determine which settings to
		// display.
		agent_name?: string

		// Internal identifier of the resource.
		id?: string

		// The environment of the service.
		service_environment?: string

		// The name of the service.
		service_name!: string

		// Agent configuration settings.
		settings!: [string]: string
	})
}
