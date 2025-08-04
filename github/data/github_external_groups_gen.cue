package data

#github_external_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_external_groups")
	close({
		external_groups?: [...close({
			group_id?:   number
			group_name?: string
			updated_at?: string
		})]
		id?: string
	})
}
