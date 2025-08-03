package res

#aws_quicksight_template_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_template_alias")
	close({
		alias_name!:              string
		arn?:                     string
		aws_account_id?:          string
		id?:                      string
		region?:                  string
		template_id!:             string
		template_version_number!: number
	})
}
