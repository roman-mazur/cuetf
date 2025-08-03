package res

#aws_quicksight_iam_policy_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_iam_policy_assignment")
	close({
		assignment_id?: string
		identities?: matchN(1, [#identities, [...#identities]])
		assignment_name!:   string
		assignment_status!: string
		aws_account_id?:    string
		id?:                string
		namespace?:         string
		policy_arn?:        string
		region?:            string
	})

	#identities: close({
		group?: [...string]
		user?: [...string]
	})
}
