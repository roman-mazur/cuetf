package data

#elasticstack_elasticsearch_info: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_info")
	cluster_name?: string
	cluster_uuid?: string
	id?:           string
	name?:         string
	tagline?:      string
	version?: [...{
		build_date?:                          string
		build_flavor?:                        string
		build_hash?:                          string
		build_snapshot?:                      bool
		build_type?:                          string
		lucene_version?:                      string
		minimum_index_compatibility_version?: string
		minimum_wire_compatibility_version?:  string
		number?:                              string
	}]
}
