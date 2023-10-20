package data

#aws_lb_hosted_zone_id: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lb_hosted_zone_id")
	id?:                 string
	load_balancer_type?: string
	region?:             string
}
