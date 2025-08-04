package data

#elasticstack_elasticsearch_ingest_processor_date_index_name: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_date_index_name")
	close({
		date_formats?: [...string]
		date_rounding!:     string
		description?:       string
		field!:             string
		id?:                string
		if?:                string
		ignore_failure?:    bool
		index_name_format?: string
		index_name_prefix?: string
		json?:              string
		locale?:            string
		on_failure?: [...string]
		tag?:      string
		timezone?: string
	})
}
