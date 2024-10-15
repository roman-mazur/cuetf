package res

#aws_quicksight_group_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_group_membership")
	arn?:            string
	aws_account_id?: string
	group_name!:     string
	id?:             string
	member_name!:    string
	namespace?:      string
}
