package data

#aws_route53_resolver_firewall_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_firewall_config")
	close({
		firewall_fail_open?: string
		id?:                 string
		owner_id?:           string
		region?:             string
		resource_id!:        string
	})
}
