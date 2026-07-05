package data

elasticstack_kibana_security_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_security_role")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Description for the role
		description?: string

		// Elasticsearch cluster and index privileges.
		elasticsearch?: close({
			// List of the cluster privileges.
			cluster?: [...string]

			// A list of indices permissions entries.
			indices?: matchN(1, [close({
				// The document fields that the owners of the role have read access to.
				field_security?: close({
					// List of the fields to which the grants will not be applied.
					except?: [...string]

					// List of the fields to grant the access to.
					grant?: [...string]
				})

				// A list of indices (or index name patterns) to which the permissions in this entry apply.
				names?: [...string]

				// The index level privileges that the owners of the role have on the specified indices.
				privileges?: [...string]

				// A search query that defines the documents the owners of the role have read access to.
				query?: string
			}), [...close({
				// The document fields that the owners of the role have read access to.
				field_security?: close({
					// List of the fields to which the grants will not be applied.
					except?: [...string]

					// List of the fields to grant the access to.
					grant?: [...string]
				})

				// A list of indices (or index name patterns) to which the permissions in this entry apply.
				names?: [...string]

				// The index level privileges that the owners of the role have on the specified indices.
				privileges?: [...string]

				// A search query that defines the documents the owners of the role have read access to.
				query?: string
			})]])

			// A list of usernames the owners of this role can impersonate.
			run_as?: [...string]

			// A list of remote indices permissions entries. Remote indices are effective
			// for remote clusters configured with the API key based model. They have no
			// effect for remote clusters configured with the certificate based model.
			remote_indices?: matchN(1, [close({
				// Include matching restricted indices in names parameter. Usage is strongly
				// discouraged as it can grant unrestricted operations on critical data, make
				// the entire system unstable or leak sensitive information.
				allow_restricted_indices?: bool

				// The document fields that the owners of the role have read access to.
				field_security?: close({
					// List of the fields to which the grants will not be applied.
					except?: [...string]

					// List of the fields to grant the access to.
					grant?: [...string]
				})

				// A list of cluster aliases to which the permissions in this entry apply.
				clusters?: [...string]

				// A list of indices (or index name patterns) to which the permissions in this entry apply.
				names?: [...string]

				// The index level privileges that the owners of the role have on the specified indices.
				privileges?: [...string]

				// A search query that defines the documents the owners of the role have read access to.
				query?: string
			}), [...close({
				// Include matching restricted indices in names parameter. Usage is strongly
				// discouraged as it can grant unrestricted operations on critical data, make
				// the entire system unstable or leak sensitive information.
				allow_restricted_indices?: bool

				// The document fields that the owners of the role have read access to.
				field_security?: close({
					// List of the fields to which the grants will not be applied.
					except?: [...string]

					// List of the fields to grant the access to.
					grant?: [...string]
				})

				// A list of cluster aliases to which the permissions in this entry apply.
				clusters?: [...string]

				// A list of indices (or index name patterns) to which the permissions in this entry apply.
				names?: [...string]

				// The index level privileges that the owners of the role have on the specified indices.
				privileges?: [...string]

				// A search query that defines the documents the owners of the role have read access to.
				query?: string
			})]])
		})

		// Optional meta-data.
		metadata?: string

		// The list of objects that specify the Kibana privileges for the role.
		kibana?: matchN(1, [close({
			// A base privilege. When specified, the base must be ["all"] or ["read"].
			base?: [...string]

			// List of privileges for specific features.
			feature?: matchN(1, [close({
				// Feature name.
				name?: string

				// Feature privileges.
				privileges?: [...string]
			}), [...close({
				// Feature name.
				name?: string

				// Feature privileges.
				privileges?: [...string]
			})]])

			// The spaces to apply the privileges to. To grant access to all spaces, set to
			// ["*"], or omit the value.
			spaces?: [...string]
		}), [...close({
			// A base privilege. When specified, the base must be ["all"] or ["read"].
			base?: [...string]

			// List of privileges for specific features.
			feature?: matchN(1, [close({
				// Feature name.
				name?: string

				// Feature privileges.
				privileges?: [...string]
			}), [...close({
				// Feature name.
				name?: string

				// Feature privileges.
				privileges?: [...string]
			})]])

			// The spaces to apply the privileges to. To grant access to all spaces, set to
			// ["*"], or omit the value.
			spaces?: [...string]
		})]])

		// The name for the role.
		name!: string
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
