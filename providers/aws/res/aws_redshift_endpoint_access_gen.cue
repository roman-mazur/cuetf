package res

#aws_redshift_endpoint_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_redshift_endpoint_access")
	close({
		address?:            string
		cluster_identifier!: string
		endpoint_name!:      string
		id?:                 string
		port?:               number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		resource_owner?:    string
		subnet_group_name!: string
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
	})
}
