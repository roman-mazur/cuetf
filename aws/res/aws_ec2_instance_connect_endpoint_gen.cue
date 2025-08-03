package res

#aws_ec2_instance_connect_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_instance_connect_endpoint")
	close({
		arn?:               string
		availability_zone?: string
		dns_name?:          string
		fips_dns_name?:     string
		id?:                string
		network_interface_ids?: [...string]
		timeouts?:           #timeouts
		owner_id?:           string
		preserve_client_ip?: bool
		region?:             string
		security_group_ids?: [...string]
		subnet_id!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
