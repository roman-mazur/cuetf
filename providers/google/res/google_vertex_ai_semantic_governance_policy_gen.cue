package res

import "list"

google_vertex_ai_semantic_governance_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_semantic_governance_policy")
	close({
		agent_response_customization?: matchN(1, [#agent_response_customization, list.MaxItems(1) & [...#agent_response_customization]])
		mcp_tools?: matchN(1, [#mcp_tools, list.MaxItems(1) & [...#mcp_tools]])
		timeouts?: #timeouts

		// The name of the agent in Agent Registry that is affected by this policy.
		agent!: string

		// Represents the principal of the agent, used by the Policy Decision Point
		// (PDP) for governance checks.
		// For more information, see
		// https://docs.cloud.google.com/agent-builder/agent-engine/agent-identity.
		// Format: 'principal://TRUST_DOMAIN/NAMESPACE/AGENT_NAME'
		agent_identity?: string

		// The time the SemanticGovernancePolicy was created, in RFC3339 UTC "Zulu" format.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The description of the SemanticGovernancePolicy.
		description?: string

		// The user-defined name of the SemanticGovernancePolicy.
		display_name?: string

		// Used to perform consistent read-modify-write transactions.
		etag?: string
		id?:   string

		// The resource name of the SemanticGovernancePolicy, in the form
		// 'projects/{project}/locations/{location}/semanticGovernancePolicies/{semantic_governance_policy}'.
		name?: string

		// The natural language constraint of the SemanticGovernancePolicy.
		natural_language_constraint!: string

		// The region of the SemanticGovernancePolicy, e.g. 'us-central1'.
		region?:  string
		project?: string

		// The ID of the SemanticGovernancePolicy, which will become the final component
		// of the resource name.
		// This value may be up to 63 characters, and valid characters are [a-z0-9-].
		// The first character cannot be a number or hyphen. The last character must be
		// a letter or a number.
		semantic_governance_policy_id!: string

		// The time the SemanticGovernancePolicy was last updated, in RFC3339 UTC "Zulu" format.
		update_time?: string
	})

	#agent_response_customization: close({
		// Custom message shown to the end user when the policy check results in a denial. Use this
		// to explain the rationale to the user. Max 1000 characters.
		denial_message?: string
	})

	#mcp_tools: close({
		// The resource name of the McpServer in Agent Registry that is affected by this policy.
		// Format: 'projects/{project}/locations/{location}/mcpServers/{mcpServer}'
		mcp_server!: string

		// The resource names of the McpTools used by the Agent that is affected by this policy.
		// At least one tool must be listed.
		tools!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
