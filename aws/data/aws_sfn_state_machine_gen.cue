package data

#aws_sfn_state_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_sfn_state_machine")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		arn?:           string
		creation_date?: string
		definition?:    string
		description?:   string
		id?:            string
		name!:          string
		revision_id?:   string
		role_arn?:      string
		status?:        string
	})
}
