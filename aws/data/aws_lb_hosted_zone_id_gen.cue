package data

#aws_lb_hosted_zone_id: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lb_hosted_zone_id")
	close({
		id?:                 string
		load_balancer_type?: string
		region?:             string
	})
}
