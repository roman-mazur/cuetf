package res

#aws_autoscaling_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_autoscaling_schedule")
	close({
		arn?:                    string
		autoscaling_group_name!: string
		desired_capacity?:       number
		end_time?:               string
		id?:                     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		max_size?:              number
		min_size?:              number
		recurrence?:            string
		scheduled_action_name!: string
		start_time?:            string
		time_zone?:             string
	})
}
