package data

#aws_redshiftserverless_workgroup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshiftserverless_workgroup")
	close({
		arn?: string
		endpoint?: [...close({
			address?: string
			port?:    number
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
		})]
		enhanced_vpc_routing?: bool
		id?:                   string
		namespace_name?:       string
		publicly_accessible?:  bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		security_group_ids?: [...string]
		subnet_ids?: [...string]
		track_name?:     string
		workgroup_id?:   string
		workgroup_name!: string
	})
}
