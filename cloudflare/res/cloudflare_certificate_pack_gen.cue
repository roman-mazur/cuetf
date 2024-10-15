package res

#cloudflare_certificate_pack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_certificate_pack")
	certificate_authority!: string
	cloudflare_branding?:   bool
	hosts!: [...string]
	id?:                     string
	type!:                   string
	validation_method!:      string
	validity_days!:          number
	wait_for_active_status?: bool
	zone_id!:                string
	validation_errors?: #validation_errors | [...#validation_errors]
	validation_records?: #validation_records | [...#validation_records]

	#validation_errors: message?: string

	#validation_records: {
		cname_name?:   string
		cname_target?: string
		emails?: [...string]
		http_body?: string
		http_url?:  string
		txt_name?:  string
		txt_value?: string
	}
}
