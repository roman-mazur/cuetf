package res

import "list"

google_agent_registry_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_agent_registry_binding")
	close({
		auth_provider_binding!: matchN(1, [#auth_provider_binding, list.MaxItems(1) & [_, ...] & [...#auth_provider_binding]])
		source!: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
		target!: matchN(1, [#target, list.MaxItems(1) & [_, ...] & [...#target]])
		timeouts?: #timeouts

		// The name of the Binding.
		binding_id!: string

		// The timestamp when the resource was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The description of the Binding.
		description?: string

		// User-defined display name for the Binding.
		display_name?: string
		id?:           string

		// The location of the resource.
		location!: string

		// The resource name of the Binding.
		name?: string

		// The timestamp when the resource was updated.
		update_time?: string
		project?:     string
	})

	#auth_provider_binding: close({
		// The resource name of the target auth provider.
		auth_provider!: string

		// The continue URI of the auth provider.
		continue_uri?: string

		// The list of OAuth2 scopes of the auth provider.
		scopes?: [...string]
	})

	#source: close({
		// The identifier of the source Agent. Format: 'urn:agent:{publisher}:{namespace}:{name}'
		identifier!: string
	})

	#target: close({
		// The identifier of the target Agent, MCP Server, or Endpoint. Format:
		// * 'urn:agent:{publisher}:{namespace}:{name}'
		// * 'urn:mcp:{publisher}:{namespace}:{name}'
		// * 'urn:endpoint:{publisher}:{namespace}:{name}'
		identifier!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
