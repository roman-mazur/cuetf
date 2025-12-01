package res

#aws_vpc_endpoint_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_vpc_endpoint_service")
	close({
		acceptance_required!: bool
		allowed_principals?: [...string]
		arn?: string
		availability_zones?: [...string]
		base_endpoint_dns_names?: [...string]
		gateway_load_balancer_arns?: [...string]
		id?:                    string
		manages_vpc_endpoints?: bool
		network_load_balancer_arns?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		timeouts?:         #timeouts
		private_dns_name?: string
		private_dns_name_configuration?: [...close({
			name?:  string
			state?: string
			type?:  string
			value?: string
		})]
		service_name?: string
		service_type?: string
		state?:        string
		supported_ip_address_types?: [...string]
		supported_regions?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
