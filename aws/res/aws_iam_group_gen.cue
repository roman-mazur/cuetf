package res

#aws_iam_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_group")
	close({
		arn?:       string
		id?:        string
		name!:      string
		path?:      string
		unique_id?: string
	})
}
