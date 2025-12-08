package res

#azurerm_function_app_hybrid_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_function_app_hybrid_connection")
	close({
		// The ID of the Function App for this Hybrid Connection.
		function_app_id!: string

		// The hostname of the endpoint.
		hostname!: string

		// The name of the Relay Namespace.
		namespace_name?: string
		id?:             string

		// The port to use for the endpoint
		port!: number

		// The ID of the Relay Hybrid Connection to use.
		relay_id!: string

		// The name of the Relay in use.
		relay_name?: string

		// The name of the Relay key with `Send` permission to use.
		// Defaults to `RootManageSharedAccessKey`
		send_key_name?: string

		// The Primary Access Key for the `send_key_name`
		send_key_value?: string
		timeouts?:       #timeouts

		// The Service Bus Namespace.
		service_bus_namespace?: string

		// The suffix for the endpoint.
		service_bus_suffix?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
