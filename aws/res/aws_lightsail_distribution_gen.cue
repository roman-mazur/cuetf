package res

import "list"

#aws_lightsail_distribution: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_distribution")
	close({
		alternative_domain_names?: [...string]
		arn?:              string
		bundle_id!:        string
		certificate_name?: string
		created_at?:       string
		domain_name?:      string
		id?:               string
		ip_address_type?:  string
		is_enabled?:       bool
		location?: [...close({
			availability_zone?: string
			region_name?:       string
		})]
		name!: string
		cache_behavior?: matchN(1, [#cache_behavior, [...#cache_behavior]])
		cache_behavior_settings?: matchN(1, [#cache_behavior_settings, list.MaxItems(1) & [...#cache_behavior_settings]])
		origin_public_dns?: string
		region?:            string
		resource_type?:     string
		status?:            string
		support_code?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
		default_cache_behavior?: matchN(1, [#default_cache_behavior, list.MaxItems(1) & [_, ...] & [...#default_cache_behavior]])
		origin?: matchN(1, [#origin, list.MaxItems(1) & [_, ...] & [...#origin]])
		timeouts?: #timeouts
	})

	#cache_behavior: close({
		behavior!: string
		path!:     string
	})

	#cache_behavior_settings: close({
		allowed_http_methods?: string
		forwarded_cookies?: matchN(1, [_#defs."/$defs/cache_behavior_settings/$defs/forwarded_cookies", list.MaxItems(1) & [..._#defs."/$defs/cache_behavior_settings/$defs/forwarded_cookies"]])
		cached_http_methods?: string
		default_ttl?:         number
		maximum_ttl?:         number
		minimum_ttl?:         number
		forwarded_headers?: matchN(1, [_#defs."/$defs/cache_behavior_settings/$defs/forwarded_headers", list.MaxItems(1) & [..._#defs."/$defs/cache_behavior_settings/$defs/forwarded_headers"]])
		forwarded_query_strings?: matchN(1, [_#defs."/$defs/cache_behavior_settings/$defs/forwarded_query_strings", list.MaxItems(1) & [..._#defs."/$defs/cache_behavior_settings/$defs/forwarded_query_strings"]])
	})

	#default_cache_behavior: close({
		behavior!: string
	})

	#origin: close({
		name!:            string
		protocol_policy?: string
		region_name!:     string
		resource_type?:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/cache_behavior_settings/$defs/forwarded_cookies": close({
		cookies_allow_list?: [...string]
		option?: string
	})

	_#defs: "/$defs/cache_behavior_settings/$defs/forwarded_headers": close({
		headers_allow_list?: [...string]
		option?: string
	})

	_#defs: "/$defs/cache_behavior_settings/$defs/forwarded_query_strings": close({
		option?: bool
		query_strings_allowed_list?: [...string]
	})
}
