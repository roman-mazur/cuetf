package data

#aws_arcregionswitch_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_arcregionswitch_plan")
	close({
		arn!:               string
		description?:       string
		execution_role?:    string
		name?:              string
		owner?:             string
		primary_region?:    string
		recovery_approach?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                          string
		recovery_time_objective_minutes?: number
		regions?: [...string]
		tags?: [string]: string
		updated_at?: string
		version?:    string
	})
}
