package data

#aws_iam_instance_profiles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_iam_instance_profiles")
	close({
		arns?: [...string]
		id?: string
		names?: [...string]
		paths?: [...string]
		role_name!: string
	})
}
