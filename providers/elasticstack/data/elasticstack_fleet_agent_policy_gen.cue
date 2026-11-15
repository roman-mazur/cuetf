package data

elasticstack_fleet_agent_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_fleet_agent_policy")
	close({
		// The identifier for the Fleet server host.
		fleet_server_host_id?: string

		// Hostname format reported for agents in this policy. `hostname` is the short
		// hostname; `fqdn` is the fully qualified domain name.
		host_name_format?: string

		// The ID of this agent policy.
		id?: string

		// Time an agent can be inactive before it is marked inactive. A duration string
		// such as `30s`, `2m`, or `1h`.
		inactivity_timeout?: string

		// Whether tamper protection is enabled for this agent policy (Fleet API `is_protected`).
		is_protected?: bool
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Advanced monitoring options for the agent policy, including the HTTP
		// monitoring endpoint and diagnostic settings.
		advanced_monitoring_options?: close({
			// Diagnostic settings for rate limiting and file upload behavior.
			diagnostics?: close({
				// Diagnostic file upload retry configuration.
				file_uploader?: close({
					// Maximum backoff duration between retry attempts.
					backoff_duration?: string

					// Initial duration before the first retry attempt.
					init_duration?: string

					// Maximum number of retry attempts for file uploads.
					max_retries?: number
				})

				// Rate limiting configuration for diagnostics requests from Fleet.
				rate_limits?: close({
					// Rate limiting burst count for diagnostics requests.
					burst?: number

					// Rate limiting interval for diagnostics requests.
					interval?: string
				})
			})

			// HTTP monitoring endpoint configuration for agent health checks and liveness probes.
			http_monitoring_endpoint?: close({
				// Whether the monitoring buffer for the HTTP endpoint is enabled.
				buffer_enabled?: bool

				// Whether the HTTP monitoring endpoint is enabled.
				enabled?: bool

				// Host for the HTTP monitoring endpoint.
				host?: string

				// Port for the HTTP monitoring endpoint.
				port?: number

				// Whether /debug/pprof profiling endpoints are enabled.
				pprof_enabled?: bool
			})
		})

		// The identifier for the data output.
		data_output_id?: string

		// Advanced agent settings for logging, resource limits, and downloads.
		advanced_settings?: close({
			// Target directory for downloading agent updates.
			download_target_directory?: string

			// Timeout for downloading agent updates.
			download_timeout?: string

			// Whether policy change acknowledgements from agents are disabled.
			features_disable_policy_change_acks_enabled?: bool

			// Whether the agent's tags are included in events it sends.
			features_include_tags_in_events_enabled?: bool

			// Maximum number of CPUs that the agent can use (GOMAXPROCS).
			go_max_procs?: number

			// Advanced internal agent settings as free-form YAML.
			internal?: string

			// Interval for log file rotation.
			logging_files_interval?: string

			// Number of rotated log files to keep.
			logging_files_keepfiles?: number

			// Rotate log files when they reach this size in bytes.
			logging_files_rotateeverybytes?: number

			// Logging level for the agent.
			logging_level?: string

			// Period for logging agent metrics.
			logging_metrics_period?: string

			// Whether logging to files is enabled.
			logging_to_files?: bool

			// Experimental runtime monitoring mode.
			monitoring_runtime_experimental?: string
		})

		// The description of the agent policy, as returned by the Fleet API.
		description?: string

		// User-defined tags. Keyed by tag name; each entry has exactly one of
		// `string_value` or `number_value`.
		global_data_tags?: [string]: close({
			// Number value for the tag.
			number_value?: number

			// String value for the tag.
			string_value?: string
		})

		// The identifier for the Elastic Agent binary download server.
		download_source_id?: string

		// Whether collection of agent logs is enabled.
		monitor_logs?: bool

		// Whether collection of agent metrics is enabled.
		monitor_metrics?: bool

		// The identifier for monitoring output.
		monitoring_output_id?: string

		// The name of the agent policy. Set exactly one of `policy_id` or `name`; the
		// other is populated from the API response.
		name?: string

		// The namespace of the agent policy.
		namespace?: string

		// The identifier of the agent policy. Set exactly one of `policy_id` or `name`;
		// the other is populated from the API response.
		policy_id?: string

		// Map of agent versions to target percentages for automatic upgrade. The key is
		// the target version and the value is the percentage of agents to upgrade to
		// that version.
		required_versions?: [string]: number

		// An identifier for the space. If space_id is not provided, the default space is used.
		space_id?: string

		// The Kibana space IDs that this agent policy is available in.
		space_ids?: [...string]

		// Whether the agent policy supports agentless data collection.
		supports_agentless?: bool

		// Time an agent can be inactive before it is automatically unenrolled. A
		// duration string such as `30s`, `2m`, or `1h`.
		unenrollment_timeout?: string
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

		// A map of headers to be sent with each request to Kibana. Custom header values
		// may appear in provider debug logs: Authorization is masked, but arbitrary
		// custom proxy-token headers are not generally redacted.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
