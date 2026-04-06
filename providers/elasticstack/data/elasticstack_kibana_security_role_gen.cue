package data

#elasticstack_kibana_security_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_security_role")
	close({
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
}
