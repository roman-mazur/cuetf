package res

#cloudflare_list_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_list_item")
	close({
		hostname?: close({
			exclude_exact_hostname?: bool
			url_hostname!:           string
		})
		redirect?: close({
			include_subdomains?:    bool
			preserve_path_suffix?:  bool
			preserve_query_string?: bool
			source_url!:            string
			status_code?:           number
			subpath_matching?:      bool
			target_url!:            string
		})
		account_id!:   string
		asn?:          number
		comment?:      string
		created_on?:   string
		id?:           string
		ip?:           string
		list_id!:      string
		modified_on?:  string
		operation_id?: string
	})
}
