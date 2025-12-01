package res

#aws_iam_group_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iam_group_membership")
	close({
		group!: string
		id?:    string
		name!:  string
		users!: [...string]
	})
}
