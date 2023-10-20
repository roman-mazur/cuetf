package res

#aws_auditmanager_framework_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_auditmanager_framework_share")
	comment?:            string
	destination_account: string
	destination_region:  string
	framework_id:        string
	id?:                 string
	status?:             string
}
