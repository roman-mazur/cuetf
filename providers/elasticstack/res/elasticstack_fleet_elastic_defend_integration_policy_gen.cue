package res

#elasticstack_fleet_elastic_defend_integration_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_elastic_defend_integration_policy")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// ID of the agent policy.
		agent_policy_id!: string

		// The description of the integration policy.
		description?: string

		// Enable the integration policy.
		enabled?: bool

		// Force operations, such as creation and deletion, to occur.
		force?: bool

		// The ID of this resource.
		id?: string

		// The version of the Elastic Defend integration package.
		integration_version!: string

		// The name of the integration policy.
		name!: string

		// The namespace of the integration policy.
		namespace!: string

		// Unique identifier of the Elastic Defend integration policy.
		// Used as the import key.
		policy_id?: string

		// Elastic Defend preset configuration. Maps to
		// `endpointConfig.preset` in the Defend API. Common values
		// include `"NGAv1"`, `"NGAV"`, `"dataCollection"`,
		// `"EDRComplete"`, `"EDREssential"`.
		preset?: string

		// The Kibana space IDs where this integration policy is
		// available. When set, must match the space_ids of the
		// referenced agent policy. If not set, will be inherited from
		// the agent policy.
		space_ids?: [...string]

		// Elastic Defend policy configuration.
		policy!: close({
			// Linux-specific Elastic Defend policy settings.
			linux?: close({
				// Linux behavior protection settings.
				behavior_protection?: close({
					// Protection mode. Valid values: `"off"`, `"detect"`,
					// `"prevent"`.
					mode?: string

					// Whether reputation service is enabled.
					reputation_service?: bool

					// Whether this protection is supported on the platform.
					supported?: bool
				})

				// Linux event collection settings.
				events?: close({
					// Collect file events.
					file?: bool

					// Collect network events.
					network?: bool

					// Collect process events.
					process?: bool

					// Collect session data events.
					session_data?: bool

					// Collect TTY I/O events.
					tty_io?: bool
				})

				// Linux logging settings.
				logging?: close({
					// Log level for file logging. Valid values: `"info"`, `"debug"`,
					// `"warning"`, `"error"`, `"critical"`.
					file?: string
				})

				// Linux malware protection settings.
				malware?: close({
					// Whether blocklist is enabled.
					blocklist?: bool

					// Malware protection mode. Valid values: `"off"`, `"detect"`,
					// `"prevent"`.
					mode?: string
				})

				// Linux memory protection settings.
				memory_protection?: close({
					// Protection mode. Valid values: `"off"`, `"detect"`,
					// `"prevent"`.
					mode?: string

					// Whether this protection is supported on the platform.
					supported?: bool
				})

				// Linux popup notification settings.
				popup?: close({
					behavior_protection?: close({
						// Whether the popup notification is enabled.
						enabled?: bool

						// The popup message text.
						message?: string
					})
					malware?: close({
						// Whether the popup notification is enabled.
						enabled?: bool

						// The popup message text.
						message?: string
					})
					memory_protection?: close({
						// Whether the popup notification is enabled.
						enabled?: bool

						// The popup message text.
						message?: string
					})
				})
			})

			// macOS-specific Elastic Defend policy settings.
			mac?: close({
				// macOS behavior protection settings.
				behavior_protection?: close({
					// Protection mode. Valid values: `"off"`, `"detect"`,
					// `"prevent"`.
					mode?: string

					// Whether reputation service is enabled.
					reputation_service?: bool

					// Whether this protection is supported on the platform.
					supported?: bool
				})

				// macOS event collection settings.
				events?: close({
					// Collect file events.
					file?: bool

					// Collect network events.
					network?: bool

					// Collect process events.
					process?: bool
				})

				// macOS logging settings.
				logging?: close({
					// Log level for file logging. Valid values: `"info"`, `"debug"`,
					// `"warning"`, `"error"`, `"critical"`.
					file?: string
				})

				// macOS malware protection settings.
				malware?: close({
					// Whether blocklist is enabled.
					blocklist?: bool

					// Malware protection mode. Valid values: `"off"`, `"detect"`,
					// `"prevent"`.
					mode?: string

					// Whether to notify the user on malware detection.
					notify_user?: bool

					// Whether on-write scan is enabled.
					on_write_scan?: bool
				})

				// macOS memory protection settings.
				memory_protection?: close({
					// Protection mode. Valid values: `"off"`, `"detect"`,
					// `"prevent"`.
					mode?: string

					// Whether this protection is supported on the platform.
					supported?: bool
				})

				// macOS popup notification settings.
				popup?: close({
					behavior_protection?: close({
						// Whether the popup notification is enabled.
						enabled?: bool

						// The popup message text.
						message?: string
					})
					malware?: close({
						// Whether the popup notification is enabled.
						enabled?: bool

						// The popup message text.
						message?: string
					})
					memory_protection?: close({
						// Whether the popup notification is enabled.
						enabled?: bool

						// The popup message text.
						message?: string
					})
				})
			})

			// Windows-specific Elastic Defend policy settings.
			windows?: close({
				// Windows antivirus registration settings.
				antivirus_registration?: close({
					// Whether antivirus registration is enabled.
					enabled?: bool

					// Antivirus registration mode. Valid values: `"enabled"`,
					// `"disabled"`, `"sync_with_malware_prevent"`.
					mode?: string
				})

				// Windows attack surface reduction settings.
				attack_surface_reduction?: close({
					// Credential hardening settings.
					credential_hardening?: close({
						// Whether credential hardening is enabled.
						enabled?: bool
					})
				})

				// Windows behavior protection settings.
				behavior_protection?: close({
					// Protection mode. Valid values: `"off"`, `"detect"`,
					// `"prevent"`.
					mode?: string

					// Whether reputation service is enabled.
					reputation_service?: bool

					// Whether this protection is supported on the platform.
					supported?: bool
				})

				// Windows event collection settings.
				events?: close({
					// Collect authentication events.
					authentication?: bool

					// Collect DLL and driver load events.
					dll_and_driver_load?: bool

					// Collect DNS events.
					dns?: bool

					// Collect file events.
					file?: bool

					// Collect network events.
					network?: bool

					// Collect process events.
					process?: bool

					// Collect registry events.
					registry?: bool

					// Collect security events.
					security?: bool
				})

				// Windows logging settings.
				logging?: close({
					// Log level for file logging. Valid values: `"info"`, `"debug"`,
					// `"warning"`, `"error"`, `"critical"`.
					file?: string
				})

				// Windows malware protection settings.
				malware?: close({
					// Whether blocklist is enabled.
					blocklist?: bool

					// Malware protection mode. Valid values: `"off"`, `"detect"`,
					// `"prevent"`.
					mode?: string

					// Whether to notify the user on malware detection.
					notify_user?: bool

					// Whether on-write scan is enabled.
					on_write_scan?: bool
				})

				// Windows memory protection settings.
				memory_protection?: close({
					// Protection mode. Valid values: `"off"`, `"detect"`,
					// `"prevent"`.
					mode?: string

					// Whether this protection is supported on the platform.
					supported?: bool
				})

				// Windows popup notification settings.
				popup?: close({
					behavior_protection?: close({
						// Whether the popup notification is enabled.
						enabled?: bool

						// The popup message text.
						message?: string
					})
					malware?: close({
						// Whether the popup notification is enabled.
						enabled?: bool

						// The popup message text.
						message?: string
					})
					memory_protection?: close({
						// Whether the popup notification is enabled.
						enabled?: bool

						// The popup message text.
						message?: string
					})
					ransomware?: close({
						// Whether the popup notification is enabled.
						enabled?: bool

						// The popup message text.
						message?: string
					})
				})

				// Windows ransomware protection settings.
				ransomware?: close({
					// Protection mode. Valid values: `"off"`, `"detect"`,
					// `"prevent"`.
					mode?: string

					// Whether this protection is supported on the platform.
					supported?: bool
				})
			})
		})
	})

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

		// A list of paths to CA certificates to validate the certificate
		// presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform
		// provider will point to, this must include the http(s) schema
		// and port number.
		endpoints?: [...string]

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
