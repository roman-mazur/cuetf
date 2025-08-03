package res

#aws_codecommit_approval_rule_template_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codecommit_approval_rule_template_association")
	close({
		approval_rule_template_name!: string
		id?:                          string
		region?:                      string
		repository_name!:             string
	})
}
