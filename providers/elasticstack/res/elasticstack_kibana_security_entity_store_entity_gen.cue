package res

elasticstack_kibana_security_entity_store_entity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_security_entity_store_entity")
	close({
		// Computed resource identifier in the format <space_id>/<entity_id>.
		id?: string
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Asset metadata associated with the entity.
		asset?: close({
			// Asset criticality level.
			criticality?: string

			// Feedback on the asset criticality.
			criticality_feedback?: close({
				// Feedback notes.
				notes?: string

				// Feedback reason.
				reason?: string
			})

			// Asset value.
			value?: number

			// Asset owner information.
			owner?: close({
				// Owner department.
				department?: string

				// Owner email.
				email?: string

				// Owner extension.
				ext?: string

				// Owner name.
				name?: string
			})
		})

		// JSON fallback for the asset block.
		asset_json?: string

		// Cloud fields collected on the entity.
		cloud?: close({
			// Cloud account identifier.
			account_id?: string

			// Cloud account name.
			account_name?: string

			// Cloud project identifier.
			project_id?: string

			// Cloud project name.
			project_name?: string

			// Cloud provider.
			provider?: string

			// Cloud region.
			region?: string

			// Cloud service name.
			service_name?: string
		})

		// JSON fallback for the cloud block.
		cloud_json?: string

		// Core entity fields shared across all entity types.
		entity?: close({
			// Boolean flags describing characteristics of the entity.
			attributes?: close({
				// Whether the entity is classified as an asset.
				asset?: bool

				// Whether the entity is managed (for example, via a directory service).
				managed?: bool

				// Whether multi-factor authentication is enabled for the entity.
				mfa_enabled?: bool

				// Whether the entity has elevated privileges.
				privileged?: bool
			})

			// Unique identifier for this entity.
			id!: string

			// Boolean flags indicating observed behavioral signals.
			behaviors?: close({
				// Whether the entity has been targeted by brute-force attacks.
				brute_force_victim?: bool

				// Whether the entity has logged in from a new country.
				new_country_login?: bool

				// Whether the entity has used a USB device.
				used_usb_device?: bool
			})

			// Human-readable name of the entity.
			name?: string

			// Timestamps tracking the entity lifecycle.
			lifecycle?: close({
				// When the entity was first observed.
				first_seen?: string

				// When the entity last generated activity.
				last_activity?: string

				// When the entity was last observed.
				last_seen?: string
			})

			// The sources that produced this entity record.
			source?: [...string]

			// Connections between this entity and other entities.
			relationships?: close({
				// Entity IDs that frequently access this entity.
				accessed_frequently_by?: [...string]

				// Entity IDs this entity accesses frequently.
				accesses_frequently?: [...string]

				// Entity IDs this entity accesses infrequently.
				accesses_infrequently?: [...string]

				// Entity IDs this entity communicates with.
				communicates_with?: [...string]

				// Entity IDs that depend on this entity.
				dependent_of?: [...string]

				// Entity IDs this entity depends on.
				depends_on?: [...string]

				// Entity IDs that own this entity.
				owned_by?: [...string]

				// Entity IDs owned by this entity.
				owns?: [...string]

				// Entity IDs that supervise this entity.
				supervised_by?: [...string]

				// Entity IDs supervised by this entity.
				supervises?: [...string]
			})

			// Optional sub-type classification for the entity.
			sub_type?: string

			// Risk scoring information for the entity.
			risk?: close({
				// The calculated risk level.
				calculated_level?: string

				// The raw numeric value of the given entity's risk score.
				calculated_score?: number

				// The normalized numeric value of the given entity's risk score.
				calculated_score_norm?: number
			})

			// The entity type.
			type?: string
		})

		// Canonical JSON (sorted keys) containing the full entity document as read back from Kibana.
		document_json?: string

		// Event fields collected on the entity.
		event?: close({
			// Event action.
			action?: string

			// Event category.
			category?: string

			// Event code.
			code?: string

			// Event dataset.
			dataset?: string

			// When the event was ingested into Elasticsearch.
			ingested?: string

			// Event kind.
			kind?: string

			// Event outcome.
			outcome?: string

			// Event provider.
			provider?: string

			// Event reason.
			reason?: string

			// Event reference.
			reference?: string

			// Event severity.
			severity?: string

			// Event timezone.
			timezone?: string

			// Event type.
			type?: string

			// Event URL.
			url?: string
		})

		// Unique identifier for this entity. Must match the entity.id field in the
		// typed entity block or entity_json when supplied.
		entity_id!: string

		// ECS host fields collected on the entity.
		host?: close({
			// Observed CPU architectures.
			architecture?: [...string]

			// Elastic Common Schema (ECS) host.os fields collected on the entity.
			os?: close({
				// Operating system family.
				family?: string

				// Full operating system name.
				full?: string

				// Kernel version.
				kernel?: string

				// Operating system name.
				name?: string

				// Operating system platform.
				platform?: string

				// Operating system type.
				type?: string

				// Operating system version.
				version?: string
			})

			// Observed host domains.
			domain?: [...string]

			// Risk scoring information for the host.
			risk?: close({
				// The calculated risk level.
				calculated_level?: string

				// The raw numeric value of the given entity's risk score.
				calculated_score?: number

				// The normalized numeric value of the given entity's risk score.
				calculated_score_norm?: number
			})

			// Observed hostnames.
			hostname?: [...string]

			// Observed host IDs.
			id?: [...string]

			// Observed IP addresses.
			ip?: [...string]

			// Observed MAC addresses.
			mac?: [...string]

			// Primary host name.
			name!: string

			// Observed host types.
			type?: [...string]
		})

		// JSON fallback for the entity block.
		entity_json?: string

		// Labels associated with the entity as a map of string to string.
		labels?: [string]: string

		// JSON fallback for labels. Supports non-string values.
		labels_json?: string

		// Orchestrator fields collected on the entity.
		orchestrator?: close({
			// Cluster identifier.
			cluster_id?: string

			// Cluster name.
			cluster_name?: string

			// Cluster version.
			cluster_version?: string

			// Orchestrator name.
			name?: string

			// Orchestrator namespace.
			namespace?: string

			// Resource identifier.
			resource_id?: string

			// Resource name.
			resource_name?: string

			// Resource type.
			resource_type?: string

			// Orchestrator type.
			type?: string
		})

		// The type of entity. Must be one of: user, host, service, generic.
		entity_type!: string

		// JSON fallback for the orchestrator block.
		orchestrator_json?: string

		// Raw API response body serialized as normalized JSON for troubleshooting.
		response_json?: string

		// ECS service fields collected on the entity.
		service?: close({
			// Primary service name.
			name!: string

			// Risk scoring information for the service.
			risk?: close({
				// The calculated risk level.
				calculated_level?: string

				// The raw numeric value of the given entity's risk score.
				calculated_score?: number

				// The normalized numeric value of the given entity's risk score.
				calculated_score_norm?: number
			})
		})

		// JSON fallback for the event block.
		event_json?: string

		// JSON fallback for the service block.
		service_json?: string

		// An identifier for the Kibana space. If omitted, the default space is used.
		space_id?: string

		// Tags associated with the entity.
		tags?: [...string]
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

		// When true, passes force=true on PUT updates.
		force?: bool

		// The time the entity record was last updated. Maps to @timestamp in the API body.
		timestamp?: string

		// ECS user fields collected on the entity.
		user?: close({
			// Observed user domains.
			domain?: [...string]

			// Risk scoring information for the user.
			risk?: close({
				// The calculated risk level.
				calculated_level?: string

				// The raw numeric value of the given entity's risk score.
				calculated_score?: number

				// The normalized numeric value of the given entity's risk score.
				calculated_score_norm?: number
			})

			// Observed email addresses.
			email?: [...string]

			// Observed full names of the user.
			full_name?: [...string]

			// Observed user hashes.
			hash?: [...string]

			// Observed user IDs.
			id?: [...string]

			// Primary user name.
			name!: string

			// Observed roles assigned to the user.
			roles?: [...string]
		})

		// JSON fallback for the host block.
		host_json?: string

		// JSON fallback for the user block.
		user_json?: string
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
