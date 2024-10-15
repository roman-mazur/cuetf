package res

#aws_ecr_lifecycle_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_lifecycle_policy")
	id?:          string
	policy!:      string
	registry_id?: string
	repository!:  string
}
