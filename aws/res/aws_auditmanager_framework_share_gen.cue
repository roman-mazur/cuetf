package res

#aws_auditmanager_framework_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_auditmanager_framework_share")
	close({
		comment?:             string
		destination_account!: string
		destination_region!:  string
		framework_id!:        string
		id?:                  string
		region?:              string
		status?:              string
	})
}
