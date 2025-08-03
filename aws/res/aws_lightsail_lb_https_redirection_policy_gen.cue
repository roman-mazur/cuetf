package res

#aws_lightsail_lb_https_redirection_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_lb_https_redirection_policy")
	close({
		enabled!: bool
		id?:      string
		lb_name!: string
		region?:  string
	})
}
