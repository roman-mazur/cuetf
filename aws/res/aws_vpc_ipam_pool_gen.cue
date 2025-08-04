package res

#aws_vpc_ipam_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipam_pool")
	close({
		address_family!:                    string
		allocation_default_netmask_length?: number
		allocation_max_netmask_length?:     number
		allocation_min_netmask_length?:     number
		allocation_resource_tags?: [string]: string
		arn?:                   string
		auto_import?:           bool
		aws_service?:           string
		cascade?:               bool
		description?:           string
		id?:                    string
		ipam_scope_id!:         string
		ipam_scope_type?:       string
		locale?:                string
		pool_depth?:            number
		public_ip_source?:      string
		publicly_advertisable?: bool
		region?:                string
		timeouts?:              #timeouts
		source_ipam_pool_id?:   string
		state?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
