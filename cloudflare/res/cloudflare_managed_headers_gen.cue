package res

#cloudflare_managed_headers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_managed_headers")
	id?:      string
	zone_id!: string
	managed_request_headers?: #managed_request_headers | [...#managed_request_headers]
	managed_response_headers?: #managed_response_headers | [...#managed_response_headers]

	#managed_request_headers: {
		enabled!: bool
		id!:      string
	}

	#managed_response_headers: {
		enabled!: bool
		id!:      string
	}
}
