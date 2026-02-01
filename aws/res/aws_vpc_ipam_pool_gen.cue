package res

import "list"

#aws_vpc_ipam_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_vpc_ipam_pool")
	close({
		address_family!:                    string
		allocation_default_netmask_length?: number
		allocation_max_netmask_length?:     number
		allocation_min_netmask_length?:     number
		allocation_resource_tags?: [string]: string
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		auto_import?: bool
		aws_service?: string
		cascade?:     bool
		description?: string
		id?:          string
		source_resource?: matchN(1, [#source_resource, list.MaxItems(1) & [...#source_resource]])
		timeouts?:              #timeouts
		ipam_scope_id!:         string
		ipam_scope_type?:       string
		locale?:                string
		pool_depth?:            number
		public_ip_source?:      string
		publicly_advertisable?: bool
		source_ipam_pool_id?:   string
		state?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#source_resource: close({
		resource_id!:     string
		resource_owner!:  string
		resource_region!: string
		resource_type!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
