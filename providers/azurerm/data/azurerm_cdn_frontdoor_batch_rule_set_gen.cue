package data

azurerm_cdn_frontdoor_batch_rule_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_cdn_frontdoor_batch_rule_set")
	close({
		timeouts?:                 #timeouts
		cdn_frontdoor_profile_id?: string
		id?:                       string
		name!:                     string
		profile_name!:             string
		resource_group_name!:      string
		rules?: [...close({
			actions?: [...close({
				modify_request_header?: [...close({
					header_name?:  string
					header_value?: string
					operator?:     string
				})]
				modify_response_header?: [...close({
					header_name?:  string
					header_value?: string
					operator?:     string
				})]
				route_configuration_override?: [...close({
					caching?: [...close({
						behaviour?:              string
						compression_enabled?:    bool
						duration?:               string
						query_string_behaviour?: string
						query_string_parameters?: [...string]
					})]
					origin_group?: [...close({
						cdn_frontdoor_origin_group_id?: string
						forwarding_protocol?:           string
					})]
				})]
				url_redirect?: [...close({
					destination_fragment?:  string
					destination_host_name?: string
					destination_path?:      string
					query_string?:          string
					redirect_protocol?:     string
					redirect_type?:         string
				})]
				url_rewrite?: [...close({
					destination_path?:                string
					preserve_unmatched_path_enabled?: bool
					source_pattern?:                  string
				})]
			})]
			behaviour_on_match?: string
			conditions?: [...close({
				client_port?: [...close({
					operator?: string
					values?: [...string]
				})]
				device_type?: [...close({
					operator?: string
					values?: [...string]
				})]
				host_name?: [...close({
					operator?: string
					transforms?: [...string]
					values?: [...string]
				})]
				http_version?: [...close({
					operator?: string
					values?: [...string]
				})]
				post_argument?: [...close({
					name?:     string
					operator?: string
					transforms?: [...string]
					values?: [...string]
				})]
				query_string?: [...close({
					operator?: string
					transforms?: [...string]
					values?: [...string]
				})]
				remote_address?: [...close({
					operator?: string
					values?: [...string]
				})]
				request_body?: [...close({
					operator?: string
					transforms?: [...string]
					values?: [...string]
				})]
				request_cookies?: [...close({
					name?:     string
					operator?: string
					transforms?: [...string]
					values?: [...string]
				})]
				request_file_extension?: [...close({
					operator?: string
					transforms?: [...string]
					values?: [...string]
				})]
				request_filename?: [...close({
					operator?: string
					transforms?: [...string]
					values?: [...string]
				})]
				request_header?: [...close({
					name?:     string
					operator?: string
					transforms?: [...string]
					values?: [...string]
				})]
				request_method?: [...close({
					operator?: string
					values?: [...string]
				})]
				request_path?: [...close({
					operator?: string
					transforms?: [...string]
					values?: [...string]
				})]
				request_scheme?: [...close({
					operator?: string
					values?: [...string]
				})]
				request_url?: [...close({
					operator?: string
					transforms?: [...string]
					values?: [...string]
				})]
				server_port?: [...close({
					operator?: string
					values?: [...string]
				})]
				socket_address?: [...close({
					operator?: string
					values?: [...string]
				})]
				ssl_protocol?: [...close({
					operator?: string
					values?: [...string]
				})]
			})]
			name?:  string
			order?: number
		})]
	})

	#timeouts: close({
		read?: string
	})
}
