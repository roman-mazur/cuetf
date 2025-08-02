package data

#aws_workspaces_bundle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspaces_bundle")
	close({
		bundle_id?: string
		compute_type?: [...close({
			name?: string
		})]
		description?: string
		id?:          string
		name?:        string
		owner?:       string
		region?:      string
		root_storage?: [...close({
			capacity?: string
		})]
		user_storage?: [...close({
			capacity?: string
		})]
	})
}
