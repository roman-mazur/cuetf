package res

#aws_elasticache_reserved_cache_node: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_elasticache_reserved_cache_node")
	arn?:                 string
	cache_node_count?:    number
	cache_node_type?:     string
	duration?:            string
	fixed_price?:         number
	id?:                  string
	offering_type?:       string
	product_description?: string
	recurring_charges?: [...{
		recurring_charge_amount?:    number
		recurring_charge_frequency?: string
	}]
	reserved_cache_nodes_offering_id!: string
	start_time?:                       string
	state?:                            string
	tags?: [string]:     string
	tags_all?: [string]: string
	usage_price?: number
	timeouts?:    #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
