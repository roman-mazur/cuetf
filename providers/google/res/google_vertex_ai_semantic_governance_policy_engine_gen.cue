package res

google_vertex_ai_semantic_governance_policy_engine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_semantic_governance_policy_engine")
	close({
		gateway_configs?: matchN(1, [#gateway_configs, [...#gateway_configs]])
		timeouts?: #timeouts

		// The time the SemanticGovernancePolicyEngine was created, in RFC3339
		// UTC "Zulu" format.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The IP address allocated for the SGPE's managed PSC endpoint.
		ip_address?: string

		// The resource name of the SemanticGovernancePolicyEngine, in the form
		// 'projects/{project}/locations/{region}/semanticGovernancePolicyEngine'.
		name?: string

		// The Private Service Connect forwarding rule URI for the SGPE's
		// managed endpoint.
		psc_forwarding_rule?: string
		project?:             string

		// The Private Service Connect service attachment URI for the SGPE's
		// managed endpoint.
		psc_service_attachment?: string

		// The region of the SemanticGovernancePolicyEngine, e.g. 'us-central1'.
		region?: string

		// The current state of the SemanticGovernancePolicyEngine. One of:
		// STATE_UNSPECIFIED, PROVISIONING, ACTIVE, FAILED, DEPROVISIONING,
		// INACTIVE. 'FAILED' indicates provisioning did not succeed; recover by
		// destroying the resource (deprovision) or re-applying (re-provision).
		state?: string

		// The time the SemanticGovernancePolicyEngine was last updated, in
		// RFC3339 UTC "Zulu" format.
		update_time?: string
	})

	#gateway_configs: close({
		// Additional consumer projects permitted to attach their own PSC endpoint
		// to this gateway's ServiceAttachment. This is the "decoupled" mode, where
		// the customer creates the PSC endpoint in a project other than this
		// gateway's network project. Each listed project is VPC-SC enforced: it
		// must be within the caller's service perimeter. The owning
		// SemanticGovernancePolicyEngine's own project is always permitted
		// implicitly and need not be listed. Format: projects/{project} (ID or number).
		allowed_projects?: [...string]

		// The fully qualified record name of the A-record the backend writes into
		// 'dns_zone_name' for this gateway. Populated after the gateway reaches
		// 'ACTIVE'; empty until then.
		dns_record?: string

		// The name of the private Cloud DNS managed zone in which the backend
		// creates the DNS record set for this gateway's PSC endpoint. This is the
		// managed-zone resource name, not a fully-qualified domain name. The zone
		// must already exist and be attached to the gateway's VPC at provision
		// time. The name must match '^[a-z0-9.-]{1,63}$'. Must be set together
		// with 'network' and 'subnetwork' (all three or none).
		dns_zone_name?: string

		// The private IP address of the PSC endpoint. This field is currently
		// always empty and is slated for deprecation; do not depend on it.
		ip_address?: string
		name!:       string

		// The URI of the network resource where the gateway's PSC endpoint is
		// provisioned. Format: projects/{project}/global/networks/{network}.
		// 'network', 'subnetwork', and 'dns_zone_name' must all be set together
		// or all omitted; setting only some is rejected by the API.
		network?: string

		// The self-link or name of the Private Service Connect endpoint forwarding
		// rule.
		psc_endpoint?: string

		// The state of the Gateway configuration. One of: STATE_UNSPECIFIED,
		// PROVISIONING, ACTIVE, DEPROVISIONING, INACTIVE, FAILED. A 'FAILED'
		// gateway is surfaced here without a provider error; the engine as a
		// whole may still be 'ACTIVE'.
		state?: string

		// The URI of the subnetwork resource where the gateway's PSC endpoint is
		// provisioned. Format:
		// projects/{project}/regions/{region}/subnetworks/{subnetwork}. Must be
		// set together with 'network' and 'dns_zone_name' (all three or none).
		subnetwork?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
