package res

#aws_redshiftserverless_endpoint_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshiftserverless_endpoint_access")
	close({
		address?:       string
		arn?:           string
		endpoint_name!: string
		id?:            string
		owner_account?: string
		port?:          number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		subnet_ids!: [...string]
		vpc_endpoint?: [...close({
			network_interface?: [...close({
				availability_zone?:    string
				network_interface_id?: string
				private_ip_address?:   string
				subnet_id?:            string
			})]
			vpc_endpoint_id?: string
			vpc_id?:          string
		})]
		vpc_security_group_ids?: [...string]
		workgroup_name!: string
	})
}
