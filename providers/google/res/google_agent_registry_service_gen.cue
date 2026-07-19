package res

import "list"

google_agent_registry_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_agent_registry_service")
	close({
		agent_spec?: matchN(1, [#agent_spec, list.MaxItems(1) & [...#agent_spec]])
		endpoint_spec?: matchN(1, [#endpoint_spec, list.MaxItems(1) & [...#endpoint_spec]])
		interfaces?: matchN(1, [#interfaces, [...#interfaces]])
		mcp_server_spec?: matchN(1, [#mcp_server_spec, list.MaxItems(1) & [...#mcp_server_spec]])
		timeouts?: #timeouts

		// The timestamp when the resource was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The description of the Service.
		description?: string

		// User-defined display name for the Service. Can have a maximum length of 63 characters.
		display_name?: string
		id?:           string

		// The location of the resource.
		location!: string

		// The resource name of the Service.
		name?: string

		// The resource name of the resulting Agent, MCP Server, or Endpoint.
		registry_resource?: string
		project?:           string

		// The name of the Service.
		service_id!: string

		// The timestamp when the resource was updated.
		update_time?: string
	})

	#agent_spec: close({
		// The content of the Agent spec in the JSON format. This payload is validated
		// against the schema for the specified type.
		content?: string

		// The type of the Agent spec content. Possible values: ["NO_SPEC", "A2A_AGENT_CARD"]
		type!: string
	})

	#endpoint_spec: close({
		// The type of the Endpoint spec content. Possible values: ["NO_SPEC"]
		type!: string
	})

	#interfaces: close({
		// The protocol binding of the interface. Possible values: ["JSONRPC", "GRPC", "HTTP_JSON"]
		protocol_binding!: string

		// The destination URL.
		url!: string
	})

	#mcp_server_spec: close({
		// The content of the MCP Server spec. This payload is validated against the
		// schema for the specified type.
		content?: string

		// The type of the MCP Server spec content. Possible values: ["NO_SPEC", "TOOL_SPEC"]
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
