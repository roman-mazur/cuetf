package data

import "list"

#elasticstack_kibana_security_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_security_role")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, list.MaxItems(1) & [...#kibana_connection]])

		// Description for the role
		description?: string

		// Elasticsearch cluster and index privileges.
		elasticsearch?: [...close({
			cluster?: [...string]
			indices?: [...close({
				field_security?: [...close({
					except?: [...string]
					grant?: [...string]
				})]
				names?: [...string]
				privileges?: [...string]
				query?: string
			})]
			remote_indices?: [...close({
				clusters?: [...string]
				field_security?: [...close({
					except?: [...string]
					grant?: [...string]
				})]
				names?: [...string]
				privileges?: [...string]
				query?: string
			})]
			run_as?: [...string]
		})]
		id?: string

		// The list of objects that specify the Kibana privileges for the
		// role.
		kibana?: [...close({
			base?: [...string]
			feature?: [...close({
				name?: string
				privileges?: [...string]
			})]
			spaces?: [...string]
		})]

		// Optional meta-data.
		metadata?: string

		// The name for the role.
		name!: string
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
