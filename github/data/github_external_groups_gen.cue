package data

#github_external_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_external_groups")
	external_groups?: [...{
		group_id?:   number
		group_name?: string
		updated_at?: string
	}]
	id?: string
}
