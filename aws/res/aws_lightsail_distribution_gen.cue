package res

import "list"

#aws_lightsail_distribution: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_distribution")
	alternative_domain_names?: [...string]
	arn?:              string
	bundle_id!:        string
	certificate_name?: string
	created_at?:       string
	domain_name?:      string
	id?:               string
	ip_address_type?:  string
	is_enabled?:       bool
	location?: [...{
		availability_zone?: string
		region_name?:       string
	}]
	name!:              string
	origin_public_dns?: string
	resource_type?:     string
	status?:            string
	support_code?:      string
	tags?: [string]:     string
	tags_all?: [string]: string
	cache_behavior?: #cache_behavior | [...#cache_behavior]
	cache_behavior_settings?: #cache_behavior_settings | list.MaxItems(1) & [...#cache_behavior_settings]
	default_cache_behavior?: #default_cache_behavior | list.MaxItems(1) & [_, ...] & [...#default_cache_behavior]
	origin?: #origin | list.MaxItems(1) & [_, ...] & [...#origin]
	timeouts?: #timeouts

	#cache_behavior: {
		behavior!: string
		path!:     string
	}

	#cache_behavior_settings: {
		allowed_http_methods?: string
		cached_http_methods?:  string
		default_ttl?:          number
		maximum_ttl?:          number
		minimum_ttl?:          number
		forwarded_cookies?: #cache_behavior_settings.#forwarded_cookies | list.MaxItems(1) & [...#cache_behavior_settings.#forwarded_cookies]
		forwarded_headers?: #cache_behavior_settings.#forwarded_headers | list.MaxItems(1) & [...#cache_behavior_settings.#forwarded_headers]
		forwarded_query_strings?: #cache_behavior_settings.#forwarded_query_strings | list.MaxItems(1) & [...#cache_behavior_settings.#forwarded_query_strings]

		#forwarded_cookies: {
			cookies_allow_list?: [...string]
			option?: string
		}

		#forwarded_headers: {
			headers_allow_list?: [...string]
			option?: string
		}

		#forwarded_query_strings: {
			option?: bool
			query_strings_allowed_list?: [...string]
		}
	}

	#default_cache_behavior: behavior!: string

	#origin: {
		name!:            string
		protocol_policy?: string
		region_name!:     string
		resource_type?:   string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
