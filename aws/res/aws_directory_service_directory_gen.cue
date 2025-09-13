package res

import "list"

#aws_directory_service_directory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_directory_service_directory")
	close({
		access_url?:                           string
		alias?:                                string
		description?:                          string
		desired_number_of_domain_controllers?: number
		dns_ip_addresses?: [...string]
		edition?:    string
		enable_sso?: bool
		id?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		name!:     string
		password!: string
		connect_settings?: matchN(1, [#connect_settings, list.MaxItems(1) & [...#connect_settings]])
		security_group_id?: string
		short_name?:        string
		size?:              string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:     string
		timeouts?: #timeouts
		vpc_settings?: matchN(1, [#vpc_settings, list.MaxItems(1) & [...#vpc_settings]])
	})

	#connect_settings: close({
		availability_zones?: [...string]
		connect_ips?: [...string]
		customer_dns_ips!: [...string]
		customer_username!: string
		subnet_ids!: [...string]
		vpc_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_settings: close({
		availability_zones?: [...string]
		subnet_ids!: [...string]
		vpc_id!: string
	})
}
