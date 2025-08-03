package res

#aws_neptunegraph_graph: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_neptunegraph_graph")
	close({
		arn?:                 string
		deletion_protection?: bool
		timeouts?:            #timeouts
		endpoint?:            string
		graph_name?:          string
		graph_name_prefix?:   string
		vector_search_configuration?: matchN(1, [#vector_search_configuration, [...#vector_search_configuration]])
		id?:                  string
		kms_key_identifier?:  string
		provisioned_memory!:  number
		public_connectivity?: bool
		region?:              string
		replica_count?:       number
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vector_search_configuration: close({
		vector_search_dimension?: number
	})
}
