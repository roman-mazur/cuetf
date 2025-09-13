package res

#aws_iam_group_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_group_policy")
	close({
		group!:       string
		id?:          string
		name?:        string
		name_prefix?: string
		policy!:      string
	})
}
