package data

#aws_route53_resolver_firewall_domain_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_firewall_domain_list")
	close({
		arn?:                string
		creation_time?:      string
		creator_request_id?: string
		domain_count?:       number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		firewall_domain_list_id!: string
		id?:                      string
		managed_owner_name?:      string
		modification_time?:       string
		name?:                    string
		status?:                  string
		status_message?:          string
	})
}
