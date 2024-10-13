package data

#aws_quicksight_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_quicksight_group")
	arn?:            string
	aws_account_id?: string
	description?:    string
	group_name!:     string
	id?:             string
	namespace?:      string
	principal_id?:   string
}
