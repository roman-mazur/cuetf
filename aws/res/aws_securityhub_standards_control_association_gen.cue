package res

#aws_securityhub_standards_control_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_standards_control_association")
	close({
		association_status!:  string
		id?:                  string
		region?:              string
		security_control_id!: string
		standards_arn!:       string
		updated_reason?:      string
	})
}
