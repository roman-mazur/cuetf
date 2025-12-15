package res

#aws_autoscaling_lifecycle_hook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_autoscaling_lifecycle_hook")
	close({
		autoscaling_group_name!: string
		default_result?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		heartbeat_timeout?:       number
		id?:                      string
		lifecycle_transition!:    string
		name!:                    string
		notification_metadata?:   string
		notification_target_arn?: string
		role_arn?:                string
	})
}
