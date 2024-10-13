package res

#aws_route53recoverycontrolconfig_control_panel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53recoverycontrolconfig_control_panel")
	arn?:                   string
	cluster_arn!:           string
	default_control_panel?: bool
	id?:                    string
	name!:                  string
	routing_control_count?: number
	status?:                string
}
