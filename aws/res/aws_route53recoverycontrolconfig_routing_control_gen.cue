package res

#aws_route53recoverycontrolconfig_routing_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53recoverycontrolconfig_routing_control")
	arn?:               string
	cluster_arn:        string
	control_panel_arn?: string
	id?:                string
	name:               string
	status?:            string
}
