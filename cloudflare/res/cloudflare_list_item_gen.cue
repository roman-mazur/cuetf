package res

import "list"

#cloudflare_list_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_list_item")
	account_id: string
	asn?:       number
	comment?:   string
	id?:        string
	ip?:        string
	list_id:    string
	hostname?:  #hostname | list.MaxItems(1) & [...#hostname]
	redirect?:  #redirect | list.MaxItems(1) & [...#redirect]

	#hostname: url_hostname: string

	#redirect: {
		include_subdomains?:    string
		preserve_path_suffix?:  string
		preserve_query_string?: string
		source_url:             string
		status_code?:           number
		subpath_matching?:      string
		target_url:             string
	}
}
