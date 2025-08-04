package data

#elasticstack_elasticsearch_info: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_info")
	close({
		// Name of the cluster, based on the Cluster name setting setting.
		cluster_name?: string

		// Unique identifier for the cluster.
		cluster_uuid?: string
		id?:           string

		// Name of the node.
		name?: string

		// Elasticsearh tag line.
		tagline?: string

		// Contains statistics about the number of nodes selected by the
		// request's node filters.
		version?: [...close({
			build_date?:                          string
			build_flavor?:                        string
			build_hash?:                          string
			build_snapshot?:                      bool
			build_type?:                          string
			lucene_version?:                      string
			minimum_index_compatibility_version?: string
			minimum_wire_compatibility_version?:  string
			number?:                              string
		})]
	})
}
