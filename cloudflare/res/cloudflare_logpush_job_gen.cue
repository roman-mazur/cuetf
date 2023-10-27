package res

#cloudflare_logpush_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_logpush_job")
	account_id?:                  string
	dataset:                      string
	destination_conf:             string
	enabled?:                     bool
	filter?:                      string
	frequency?:                   string
	id?:                          string
	kind?:                        string
	logpull_options?:             string
	max_upload_bytes?:            number
	max_upload_interval_seconds?: number
	max_upload_records?:          number
	name?:                        string
	ownership_challenge?:         string
	zone_id?:                     string
}
