package data

aws_vpclattice_service_network_service_associations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_vpclattice_service_network_service_associations")
	close({
		items?: [...close({
			arn?:                string
			created_at?:         string
			created_by?:         string
			custom_domain_name?: string
			dns_entry?: [...close({
				domain_name?:    string
				hosted_zone_id?: string
			})]
			id?:                   string
			service_arn?:          string
			service_id?:           string
			service_name?:         string
			service_network_arn?:  string
			service_network_id?:   string
			service_network_name?: string
			status?:               string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// ID or ARN of the Service.
		service_identifier?: string

		// ID or ARN of the Service Network.
		service_network_identifier?: string
	})
}
