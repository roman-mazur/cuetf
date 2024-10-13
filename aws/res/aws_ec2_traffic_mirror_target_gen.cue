package res

#aws_ec2_traffic_mirror_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_traffic_mirror_target")
	arn?:                               string
	description?:                       string
	gateway_load_balancer_endpoint_id?: string
	id?:                                string
	network_interface_id?:              string
	network_load_balancer_arn?:         string
	owner_id?:                          string
	tags?: [string]:     string
	tags_all?: [string]: string
}
