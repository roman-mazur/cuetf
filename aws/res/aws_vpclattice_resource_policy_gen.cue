package res

#aws_vpclattice_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_resource_policy")
	id?:           string
	policy!:       string
	resource_arn!: string
}
