package res

#aws_auditmanager_assessment_report: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_auditmanager_assessment_report")
	close({
		assessment_id!: string
		author?:        string
		description?:   string
		id?:            string
		name!:          string
		region?:        string
		status?:        string
	})
}
