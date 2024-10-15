package res

import "list"

#cloudflare_logpush_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_logpush_job")
	account_id?:                  string
	dataset!:                     string
	destination_conf!:            string
	enabled?:                     bool
	filter?:                      string
	id?:                          string
	kind?:                        string
	logpull_options?:             string
	max_upload_bytes?:            number
	max_upload_interval_seconds?: number
	max_upload_records?:          number
	name?:                        string
	ownership_challenge?:         string
	zone_id?:                     string
	output_options?: #output_options | list.MaxItems(1) & [...#output_options]

	#output_options: {
		batch_prefix?:    string
		batch_suffix?:    string
		cve20214428?:     bool
		field_delimiter?: string
		field_names?: [...string]
		output_type?:      string
		record_delimiter?: string
		record_prefix?:    string
		record_suffix?:    string
		record_template?:  string
		sample_rate?:      number
		timestamp_format?: string
	}
}
