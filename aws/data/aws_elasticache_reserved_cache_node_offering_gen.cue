package data

#aws_elasticache_reserved_cache_node_offering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_elasticache_reserved_cache_node_offering")
	cache_node_type!:     string
	duration!:            string
	fixed_price?:         number
	offering_id?:         string
	offering_type!:       string
	product_description!: string
}
