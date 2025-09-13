package res

#aws_quicksight_iam_policy_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_iam_policy_assignment")
	close({
		assignment_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		assignment_name!:   string
		assignment_status!: string
		aws_account_id?:    string
		id?:                string
		namespace?:         string
		policy_arn?:        string
		identities?: matchN(1, [#identities, [...#identities]])
	})

	#identities: close({
		group?: [...string]
		user?: [...string]
	})
}
