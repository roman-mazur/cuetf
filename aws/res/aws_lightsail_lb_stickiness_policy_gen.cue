package res

#aws_lightsail_lb_stickiness_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_lb_stickiness_policy")
	cookie_duration!: number
	enabled!:         bool
	id?:              string
	lb_name!:         string
}
