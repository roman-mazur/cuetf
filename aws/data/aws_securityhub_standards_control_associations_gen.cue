package data

#aws_securityhub_standards_control_associations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_standards_control_associations")
	close({
		id?:                  string
		region?:              string
		security_control_id!: string
		standards_control_associations?: [...close({
			association_status?: string
			related_requirements?: [...string]
			security_control_arn?:          string
			security_control_id?:           string
			standards_arn?:                 string
			standards_control_description?: string
			standards_control_title?:       string
			updated_at?:                    string
			updated_reason?:                string
		})]
	})
}
