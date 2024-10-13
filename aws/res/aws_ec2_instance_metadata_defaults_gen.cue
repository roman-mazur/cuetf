package res

#aws_ec2_instance_metadata_defaults: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_instance_metadata_defaults")
	http_endpoint?:               string
	http_put_response_hop_limit?: number
	http_tokens?:                 string
	id?:                          string
	instance_metadata_tags?:      string
}
