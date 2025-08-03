package res

#aws_elasticache_reserved_cache_node: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticache_reserved_cache_node")
	close({
		arn?:                 string
		cache_node_count?:    number
		cache_node_type?:     string
		duration?:            string
		fixed_price?:         number
		id?:                  string
		offering_type?:       string
		product_description?: string
		timeouts?:            #timeouts
		recurring_charges?: [...close({
			recurring_charge_amount?:    number
			recurring_charge_frequency?: string
		})]
		region?:                           string
		reserved_cache_nodes_offering_id!: string
		start_time?:                       string
		state?:                            string
		tags?: [string]:     string
		tags_all?: [string]: string
		usage_price?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
