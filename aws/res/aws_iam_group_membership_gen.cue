package res

#aws_iam_group_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_group_membership")
	group!: string
	id?:    string
	name!:  string
	users!: [...string]
}
