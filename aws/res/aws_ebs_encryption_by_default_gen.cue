package res

#aws_ebs_encryption_by_default: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ebs_encryption_by_default")
	enabled?: bool
	id?:      string
}
