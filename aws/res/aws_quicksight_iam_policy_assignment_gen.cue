package res

#aws_quicksight_iam_policy_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_iam_policy_assignment")
	assignment_id?:     string
	assignment_name!:   string
	assignment_status!: string
	aws_account_id?:    string
	id?:                string
	namespace?:         string
	policy_arn?:        string
	identities?: #identities | [...#identities]

	#identities: {
		group?: [...string]
		user?: [...string]
	}
}
