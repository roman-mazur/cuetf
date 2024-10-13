package res

#aws_ec2_traffic_mirror_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_traffic_mirror_filter")
	arn?:         string
	description?: string
	id?:          string
	network_services?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
}
