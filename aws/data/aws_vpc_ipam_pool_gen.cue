package data

#aws_vpc_ipam_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipam_pool")
	close({
		address_family?:                    string
		allocation_default_netmask_length?: number
		allocation_max_netmask_length?:     number
		allocation_min_netmask_length?:     number
		allocation_resource_tags?: [string]: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		arn?:         string
		auto_import?: bool
		aws_service?: string
		description?: string
		id?:          string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:              #timeouts
		ipam_pool_id?:          string
		ipam_scope_id?:         string
		ipam_scope_type?:       string
		locale?:                string
		pool_depth?:            number
		publicly_advertisable?: bool
		source_ipam_pool_id?:   string
		state?:                 string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
