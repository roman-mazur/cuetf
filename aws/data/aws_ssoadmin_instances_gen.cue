package data

#aws_ssoadmin_instances: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_instances")
	arns?: [...string]
	id?: string
	identity_store_ids?: [...string]
}
