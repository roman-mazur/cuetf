package res

#aws_vpc_ipam: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipam")
	close({
		arn?:     string
		cascade?: bool
		operating_regions?: matchN(1, [#operating_regions, [_, ...] & [...#operating_regions]])
		timeouts?:                                  #timeouts
		default_resource_discovery_association_id?: string
		default_resource_discovery_id?:             string
		description?:                               string
		enable_private_gua?:                        bool
		id?:                                        string
		private_default_scope_id?:                  string
		public_default_scope_id?:                   string
		region?:                                    string
		scope_count?:                               number
		tags?: [string]:     string
		tags_all?: [string]: string
		tier?: string
	})

	#operating_regions: close({
		region_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
