package res

import "list"

#elasticstack_kibana_security_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_security_role")
	close({
		// Optional description for the role
		description?: string

		// Optional meta-data.
		metadata?: string
		id?:       string

		// The name for the role.
		name!: string
		elasticsearch?: matchN(1, [#elasticsearch, list.MaxItems(1) & [_, ...] & [...#elasticsearch]])
		kibana?: matchN(1, [#kibana, [...#kibana]])
	})

	#elasticsearch: close({
		indices?: matchN(1, [_#defs."/$defs/elasticsearch/$defs/indices", [..._#defs."/$defs/elasticsearch/$defs/indices"]])
		remote_indices?: matchN(1, [_#defs."/$defs/elasticsearch/$defs/remote_indices", [..._#defs."/$defs/elasticsearch/$defs/remote_indices"]])

		// List of the cluster privileges.
		cluster?: [...string]

		// A list of usernames the owners of this role can impersonate.
		run_as?: [...string]
	})

	#kibana: close({
		feature?: matchN(1, [_#defs."/$defs/kibana/$defs/feature", [..._#defs."/$defs/kibana/$defs/feature"]])

		// A base privilege. When specified, the base must be ["all"] or
		// ["read"]. When the base privileges are specified, you are
		// unable to use the "feature" section.
		base?: [...string]

		// The spaces to apply the privileges to. To grant access to all
		// spaces, set to ["*"], or omit the value.
		spaces!: [...string]
	})

	_#defs: "/$defs/elasticsearch/$defs/indices": close({
		// A list of indices (or index name patterns) to which the
		// permissions in this entry apply.
		names!: [...string]
		field_security?: matchN(1, [_#defs."/$defs/elasticsearch/$defs/indices/$defs/field_security", list.MaxItems(1) & [..._#defs."/$defs/elasticsearch/$defs/indices/$defs/field_security"]])

		// The index level privileges that the owners of the role have on
		// the specified indices.
		privileges!: [...string]

		// A search query that defines the documents the owners of the
		// role have read access to.
		query?: string
	})

	_#defs: "/$defs/elasticsearch/$defs/indices/$defs/field_security": close({
		// List of the fields to which the grants will not be applied.
		except?: [...string]

		// List of the fields to grant the access to.
		grant?: [...string]
	})

	_#defs: "/$defs/elasticsearch/$defs/remote_indices": close({
		// A list of cluster aliases to which the permissions in this
		// entry apply.
		clusters!: [...string]

		// A list of indices (or index name patterns) to which the
		// permissions in this entry apply.
		names!: [...string]

		// The index level privileges that the owners of the role have on
		// the specified indices.
		privileges!: [...string]
		field_security?: matchN(1, [_#defs."/$defs/elasticsearch/$defs/remote_indices/$defs/field_security", list.MaxItems(1) & [..._#defs."/$defs/elasticsearch/$defs/remote_indices/$defs/field_security"]])

		// A search query that defines the documents the owners of the
		// role have read access to.
		query?: string
	})

	_#defs: "/$defs/elasticsearch/$defs/remote_indices/$defs/field_security": close({
		// List of the fields to which the grants will not be applied.
		except?: [...string]

		// List of the fields to grant the access to.
		grant?: [...string]
	})

	_#defs: "/$defs/kibana/$defs/feature": close({
		// Feature name.
		name!: string

		// Feature privileges.
		privileges!: [...string]
	})
}
