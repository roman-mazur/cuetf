package res

#aws_rds_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_certificate")
	certificate_identifier!: string
	id?:                     string
}
