package res

#aws_quicksight_role_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_role_membership")
	close({
		aws_account_id?: string
		member_name!:    string
		namespace?:      string
		region?:         string
		role!:           string
	})
}
