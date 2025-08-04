package data

#aws_vpc_ipam_pools: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipam_pools")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		id?: string
		ipam_pools?: [...close({
			address_family?:                    string
			allocation_default_netmask_length?: number
			allocation_max_netmask_length?:     number
			allocation_min_netmask_length?:     number
			allocation_resource_tags?: [string]: string
			arn?:                   string
			auto_import?:           bool
			aws_service?:           string
			description?:           string
			id?:                    string
			ipam_scope_id?:         string
			ipam_scope_type?:       string
			locale?:                string
			pool_depth?:            number
			publicly_advertisable?: bool
			source_ipam_pool_id?:   string
			state?:                 string
			tags?: [string]: string
		})]
		region?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
