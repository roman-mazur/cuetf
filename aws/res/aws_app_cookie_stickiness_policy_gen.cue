package res

#aws_app_cookie_stickiness_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_app_cookie_stickiness_policy")
	cookie_name!:   string
	id?:            string
	lb_port!:       number
	load_balancer!: string
	name!:          string
}
