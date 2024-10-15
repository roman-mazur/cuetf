package res

#cloudflare_list_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_list_item")
	account_id!: string
	asn?:        number
	comment?:    string
	id?:         string
	ip?:         string
	list_id!:    string
	hostname?: #hostname | [...#hostname]
	redirect?: #redirect | [...#redirect]

	#hostname: url_hostname!: string

	#redirect: {
		include_subdomains?:    bool
		preserve_path_suffix?:  bool
		preserve_query_string?: bool
		source_url!:            string
		status_code?:           number
		subpath_matching?:      bool
		target_url!:            string
	}
}
