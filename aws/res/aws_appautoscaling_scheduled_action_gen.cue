package res

import "list"

#aws_appautoscaling_scheduled_action: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_appautoscaling_scheduled_action")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		arn?:      string
		end_time?: string
		id?:       string
		name!:     string
		scalable_target_action!: matchN(1, [#scalable_target_action, list.MaxItems(1) & [_, ...] & [...#scalable_target_action]])
		resource_id!:        string
		scalable_dimension!: string
		schedule!:           string
		service_namespace!:  string
		start_time?:         string
		timezone?:           string
	})

	#scalable_target_action: close({
		max_capacity?: string
		min_capacity?: string
	})
}
