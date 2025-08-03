package res

#aws_route53_resolver_firewall_domain_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_firewall_domain_list")
	close({
		arn?: string
		domains?: [...string]
		id?:     string
		name!:   string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
