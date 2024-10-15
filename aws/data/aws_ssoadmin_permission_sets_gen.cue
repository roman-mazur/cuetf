package data

#aws_ssoadmin_permission_sets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_permission_sets")
	arns?: [...string]
	id?:           string
	instance_arn!: string
}
