package data

#google_iam_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_iam_role")
	close({
		id?: string
		included_permissions?: [...string]
		name!:  string
		stage?: string
		title?: string
	})
}
