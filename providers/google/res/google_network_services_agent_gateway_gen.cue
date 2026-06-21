package res

import "list"

#google_network_services_agent_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_agent_gateway")
	close({
		google_managed?: matchN(1, [#google_managed, list.MaxItems(1) & [...#google_managed]])
		network_config?: matchN(1, [#network_config, list.MaxItems(1) & [...#network_config]])
		self_managed?: matchN(1, [#self_managed, list.MaxItems(1) & [...#self_managed]])
		timeouts?: #timeouts

		// AgentGatewayOutputCard contains informational output-only
		// fields.
		agent_gateway_card?: [...close({
			mtls_endpoint?: string
			root_certificates?: [...string]
			service_extensions_service_account?: string
		})]

		// The timestamp when the resource was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Etag of the resource.
		// If this is provided, it must match the server's etag. If the
		// provided etag
		// does not match the server's etag, the request will fail with a
		// 409 ABORTED
		// error.
		etag?: string
		id?:   string

		// Set of label tags associated with the AgentGateway resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the agent gateway.
		location!: string

		// Name of the AgentGateway resource.
		name!:    string
		project?: string

		// A list of Agent registries containing the agents, MCP servers
		// and tools governed by the Agent Gateway.
		// Note: Currently limited to project-scoped registries Must be of
		// format
		// '//agentregistry.googleapis.com/{version}/projects/{{project}}/locations/{{location}}'
		registries?: [...string]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp when the resource was updated.
		update_time?: string
	})

	#google_managed: close({
		// Operating Mode of Agent Gateway. Possible values:
		// ["AGENT_TO_ANYWHERE", "CLIENT_TO_AGENT"]
		governed_access_path!: string
	})

	#network_config: close({
		egress!: matchN(1, [_#defs."/$defs/network_config/$defs/egress", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/network_config/$defs/egress"]])
	})

	#self_managed: close({
		// A supported Google Cloud networking proxy in the Project and
		// Location.
		resource_uri!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/network_config/$defs/egress": close({
		// The URI of the Network Attachment resource.
		network_attachment!: string
	})
}
