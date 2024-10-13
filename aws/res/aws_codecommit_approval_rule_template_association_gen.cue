package res

#aws_codecommit_approval_rule_template_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codecommit_approval_rule_template_association")
	approval_rule_template_name!: string
	id?:                          string
	repository_name!:             string
}
