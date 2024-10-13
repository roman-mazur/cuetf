package res

#aws_autoscaling_lifecycle_hook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_autoscaling_lifecycle_hook")
	autoscaling_group_name!:  string
	default_result?:          string
	heartbeat_timeout?:       number
	id?:                      string
	lifecycle_transition!:    string
	name!:                    string
	notification_metadata?:   string
	notification_target_arn?: string
	role_arn?:                string
}
