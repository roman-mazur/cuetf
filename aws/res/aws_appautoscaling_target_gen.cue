package res

import "list"

#aws_appautoscaling_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appautoscaling_target")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		arn?:          string
		id?:           string
		max_capacity!: number
		min_capacity!: number
		suspended_state?: matchN(1, [#suspended_state, list.MaxItems(1) & [...#suspended_state]])
		resource_id!:        string
		role_arn?:           string
		scalable_dimension!: string
		service_namespace!:  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#suspended_state: close({
		dynamic_scaling_in_suspended?:  bool
		dynamic_scaling_out_suspended?: bool
		scheduled_scaling_suspended?:   bool
	})
}
