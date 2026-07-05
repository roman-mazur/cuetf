package data

elasticstack_kibana_security_entity_store_entities: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_security_entity_store_entities")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// When set, the provider generates an implicit KQL filter for this entity id.
		// Conflicts with filter and filter_query.
		entity_id?: string

		// Entity types to include in the results. Valid values are user, host, service, generic.
		entity_types?: [...string]

		// Fields to include in response fields.
		fields?: [...string]

		// A Kibana Query Language (KQL) filter for the search-after mode.
		filter?: string

		// An Elasticsearch query string to filter entities in page mode.
		filter_query?: string

		// Stable identifier computed as <space_id>/entity_store_entities.
		id?: string

		// List of entity records with typed attributes matching the resource schema.
		items?: [...close({
			"@timestamp"?: string
			asset?: close({
				criticality?: string
				criticality_feedback?: close({
					notes?:  string
					reason?: string
				})
				owner?: close({
					department?: string
					email?:      string
					ext?:        string
					name?:       string
				})
				value?: number
			})
			cloud?: close({
				account_id?:   string
				account_name?: string
				project_id?:   string
				project_name?: string
				provider?:     string
				region?:       string
				service_name?: string
			})
			document_json?: string
			entity?: close({
				attributes?: close({
					asset?:       bool
					managed?:     bool
					mfa_enabled?: bool
					privileged?:  bool
				})
				behaviors?: close({
					brute_force_victim?: bool
					new_country_login?:  bool
					used_usb_device?:    bool
				})
				id?: string
				lifecycle?: close({
					first_seen?:    string
					last_activity?: string
					last_seen?:     string
				})
				name?: string
				relationships?: close({
					accessed_frequently_by?: [...string]
					accesses_frequently?: [...string]
					accesses_infrequently?: [...string]
					communicates_with?: [...string]
					dependent_of?: [...string]
					depends_on?: [...string]
					owned_by?: [...string]
					owns?: [...string]
					supervised_by?: [...string]
					supervises?: [...string]
				})
				risk?: close({
					calculated_level?:      string
					calculated_score?:      number
					calculated_score_norm?: number
				})
				source?: [...string]
				sub_type?: string
				type?:     string
			})
			event?: close({
				action?:    string
				category?:  string
				code?:      string
				dataset?:   string
				ingested?:  string
				kind?:      string
				outcome?:   string
				provider?:  string
				reason?:    string
				reference?: string
				severity?:  string
				timezone?:  string
				type?:      string
				url?:       string
			})
			host?: close({
				architecture?: [...string]
				domain?: [...string]
				hostname?: [...string]
				id?: [...string]
				ip?: [...string]
				mac?: [...string]
				name?: string
				os?: close({
					family?:   string
					full?:     string
					kernel?:   string
					name?:     string
					platform?: string
					type?:     string
					version?:  string
				})
				risk?: close({
					calculated_level?:      string
					calculated_score?:      number
					calculated_score_norm?: number
				})
				type?: [...string]
			})
			labels?: [string]: string
			orchestrator?: close({
				cluster_id?:      string
				cluster_name?:    string
				cluster_version?: string
				name?:            string
				namespace?:       string
				resource_id?:     string
				resource_name?:   string
				resource_type?:   string
				type?:            string
			})
			service?: close({
				name?: string
				risk?: close({
					calculated_level?:      string
					calculated_score?:      number
					calculated_score_norm?: number
				})
			})
			tags?: [...string]
			user?: close({
				domain?: [...string]
				email?: [...string]
				full_name?: [...string]
				hash?: [...string]
				id?: [...string]
				name?: string
				risk?: close({
					calculated_level?:      string
					calculated_score?:      number
					calculated_score_norm?: number
				})
				roles?: [...string]
			})
		})]

		// Page number to return (1-indexed) in page mode.
		page?: number

		// Number of entities per page in page mode.
		per_page?: number

		// Normalized JSON (sorted keys) of the full API response body.
		results_json?: string

		// JSON-encoded search_after cursor from a previous response.
		search_after?: string

		// Number of entities to return in search-after mode.
		size?: number

		// Field to sort results by in page mode.
		sort_field?: string

		// Sort order in page mode.
		sort_order?: string

		// Fields to include in response _source.
		source?: [...string]

		// An identifier for the Kibana space. If omitted, the default space is used.
		space_id?: string
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
