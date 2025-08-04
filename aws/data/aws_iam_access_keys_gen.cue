package data

#aws_iam_access_keys: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_access_keys")
	close({
		access_keys?: [...close({
			access_key_id?: string
			create_date?:   string
			status?:        string
		})]
		id?:   string
		user!: string
	})
}
