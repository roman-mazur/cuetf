package res

elasticstack_fleet_managed_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_managed_integration")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Additional data stream permissions to grant beyond the package's defaults; updatable in-place.
		additional_datastreams_permissions?: [...string]

		// References an existing cloud connector for cross-account access. Changing any
		// field forces replacement of the entire `cloud_connector` block.
		cloud_connector?: close({
			// The ID of an existing cloud connector to associate with this policy.
			cloud_connector_id?: string

			// Whether the cloud connector is enabled for this policy.
			enabled?: bool

			// The name of the cloud connector.
			name?: string

			// The target cloud service provider for the cloud connector. One of `aws`, `azure`, or `gcp`.
			target_csp?: string
		})

		// Whether to create dataset templates when creating the policy. Create-only:
		// sent on the create request only, not read back from the API. Changes after
		// creation are a no-op until the resource is recreated.
		create_dataset_templates?: bool

		// Global data tags applied to the managed integration's data streams; updatable
		// in-place. Keyed by tag name; set exactly one of `string_value` or
		// `number_value` per entry.
		global_data_tags?: [string]: close({
			// Number value for the tag. If this is set, `string_value` must not be defined.
			number_value?: number

			// String value for the tag. If this is set, `number_value` must not be defined.
			string_value?: string
		})

		// The creation timestamp of the managed integration (ISO 8601).
		created_at?: string

		// Policy inputs mapped by input type ID; updatable in-place.
		inputs?: [string]: close({
			// Agent condition expression to evaluate whether to apply this input.
			condition?: string

			// Input streams mapped by stream ID.
			streams?: [string]: close({
				// Agent condition expression to evaluate whether to apply this stream.
				condition?: string

				// Enable the stream.
				enabled?: bool

				// Stream-level variables as JSON.
				vars?: string
			})

			// Enable the input.
			enabled?: bool

			// Input-level variables as JSON. Computed (not purely Optional): some packages
			// (e.g. cloud_security_posture/CSPM) populate informational input-level vars
			// (such as CloudFormation quick-create template URLs) that are always present
			// in the API response regardless of configuration; Computed with
			// UseStateForUnknown lets those flow through without requiring the user to
			// declare them.
			vars?: string
		})

		// The description of the managed integration; updatable in-place. An explicit
		// empty string is rejected: it is indistinguishable from "unset" once
		// round-tripped through the API (Kibana returns an omitted/empty description
		// as `""`, which this provider folds back to null), so setting `description =
		// ""` would otherwise produce a permanent, non-converging diff. Omit the
		// attribute instead of setting it to `""`.
		description?: string

		// The Fleet integration package this managed integration is based on.
		package!: close({
			// The package name; forces replacement on change.
			name!: string

			// The package title. If omitted, Kibana populates it from the package registry.
			// Updatable in-place (not `RequiresReplace`).
			title?: string

			// The package version; updatable in-place.
			version!: string
		})

		// Force the create operation. Create-only: sent on the create request only and
		// not read back from the API.
		force?: bool
		timeouts?: close({
			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			create?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
			// applicable if changes are saved into state before the destroy operation
			// occurs.
			delete?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Read operations occur during any refresh or
			// planning operation when refresh is enabled.
			read?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			update?: string
		})

		// Force deletion of the policy, passed as `?force=true` on the delete request. Defaults to `false`.
		force_delete?: bool

		// The composite ID of the managed integration: `<space_id>/<policy_id>`.
		id?: string

		// The name of the managed integration; updatable in-place.
		name!: string

		// The namespace of the managed integration; forces replacement on change. An
		// explicit empty string is rejected for the same reason as `description`: it
		// is indistinguishable from "unset" once round-tripped through the API.
		namespace?: string

		// The managed integration ID. Server-assigned if omitted; forces replacement on change.
		policy_id?: string

		// Policy template within the package, configured at create time. Not returned
		// by GET; preserved from prior config on refresh. Null after import when
		// unavailable. Changing it forces replacement.
		policy_template?: string

		// Skips the deployment-topology preflight check. Use only if you are certain
		// this is running against a supported Elastic Cloud Hosted or Serverless
		// deployment and the automatic detection is producing a false positive (e.g.
		// due to non-standard network routing such as PrivateLink). Does not weaken
		// version gating (Kibana 9.5.0+ is still enforced) -- it only bypasses the
		// topology heuristic. Defaults to `false`. Create-only: consulted only during
		// Create and not read back from the API.
		skip_topology_check?: bool

		// The list of spaces the managed integration belongs to; defaults to
		// `["default"]`; forces replacement on change.
		space_ids?: [...string]

		// The last-updated timestamp of the managed integration (ISO 8601).
		updated_at?: string

		// Top-level variable group selections, mapping group name to selected option;
		// updatable in-place. Modeled at the top level only in v1; per-stream
		// var_group_selections is deferred to a follow-up change.
		var_group_selections?: [string]: string

		// Integration-level variables as JSON. Variables vary depending on the
		// integration package. Updatable in-place.
		//
		// The provider injects the '__tf_provider_context' property into this JSON
		// object. In most cases this field will be ignored when computing the
		// difference between the current and desired state. In some cases however,
		// this property may be shown in the Terraform plan. Any changes to the
		// '__tf_provider_context' property can be safely ignored. This property is
		// used internally by the provider, and you should not set this property within
		// your Terraform configuration.
		vars_json?: string
	})

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

		// A list of paths to CA certificates to validate the certificate presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform provider will point
		// to, this must include the http(s) schema and port number.
		endpoints?: [...string]

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
