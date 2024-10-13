package res

#aws_auditmanager_assessment_delegation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_auditmanager_assessment_delegation")
	assessment_id!:  string
	comment?:        string
	control_set_id!: string
	delegation_id?:  string
	id?:             string
	role_arn!:       string
	role_type!:      string
	status?:         string
}
