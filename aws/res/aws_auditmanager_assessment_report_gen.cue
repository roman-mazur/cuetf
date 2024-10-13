package res

#aws_auditmanager_assessment_report: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_auditmanager_assessment_report")
	assessment_id!: string
	author?:        string
	description?:   string
	id?:            string
	name!:          string
	status?:        string
}
