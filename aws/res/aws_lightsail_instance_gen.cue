package res

import "list"

#aws_lightsail_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_instance")
	close({
		arn?:               string
		availability_zone!: string
		blueprint_id!:      string
		bundle_id!:         string
		cpu_count?:         number
		created_at?:        string
		add_on?: matchN(1, [#add_on, list.MaxItems(1) & [...#add_on]])
		id?:              string
		ip_address_type?: string
		ipv6_addresses?: [...string]
		is_static_ip?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		key_pair_name?:      string
		name!:               string
		private_ip_address?: string
		public_ip_address?:  string
		ram_size?:           number
		tags?: [string]:     string
		tags_all?: [string]: string
		user_data?: string
		username?:  string
	})

	#add_on: close({
		snapshot_time!: string
		status!:        string
		type!:          string
	})
}
