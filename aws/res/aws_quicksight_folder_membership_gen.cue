package res

#aws_quicksight_folder_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_folder_membership")
	aws_account_id?: string
	folder_id!:      string
	id?:             string
	member_id!:      string
	member_type!:    string
}
