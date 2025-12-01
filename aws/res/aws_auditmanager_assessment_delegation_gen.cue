package res

#aws_auditmanager_assessment_delegation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_auditmanager_assessment_delegation")
	close({
		assessment_id!:  string
		comment?:        string
		control_set_id!: string
		delegation_id?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		id?:        string
		role_arn!:  string
		role_type!: string
		status?:    string
	})
}
