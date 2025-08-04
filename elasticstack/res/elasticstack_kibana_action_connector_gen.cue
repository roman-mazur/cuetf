package res

#elasticstack_kibana_action_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_action_connector")
	close({
		// The configuration for the connector. Configuration properties
		// vary depending on the connector type.
		config?: string

		// A UUID v1 or v4 to use instead of a randomly generated ID.
		connector_id?: string

		// The ID of the connector type, e.g. `.index`.
		connector_type_id!: string

		// Indicates whether the connector type is deprecated.
		is_deprecated?: bool
		id?:            string

		// Indicates whether secrets are missing for the connector.
		is_missing_secrets?: bool

		// Indicates whether it is a preconfigured connector.
		is_preconfigured?: bool

		// The name of the connector. While this name does not have to be
		// unique, a distinctive name can help you identify a connector.
		name!: string

		// The secrets configuration for the connector. Secrets
		// configuration properties vary depending on the connector type.
		secrets?: string

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string
	})
}
