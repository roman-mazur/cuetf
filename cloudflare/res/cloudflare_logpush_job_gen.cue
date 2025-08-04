package res

#cloudflare_logpush_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_logpush_job")
	close({
		account_id?:       string
		dataset?:          string
		destination_conf!: string
		enabled?:          bool
		output_options?: close({
			batch_prefix?:    string
			batch_suffix?:    string
			cve_2021_44228?:  bool
			field_delimiter?: string
			field_names?: [...string]
			output_type?:      string
			record_delimiter?: string
			record_prefix?:    string
			record_suffix?:    string
			record_template?:  string
			sample_rate?:      number
			timestamp_format?: string
		})
		error_message?:               string
		filter?:                      string
		id?:                          number
		kind?:                        string
		last_complete?:               string
		last_error?:                  string
		max_upload_bytes?:            number
		max_upload_interval_seconds?: number
		max_upload_records?:          number
		name?:                        string
		ownership_challenge?:         string
		zone_id?:                     string
	})
}
