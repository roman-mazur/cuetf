package res

import "list"

#aws_lightsail_distribution: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_distribution")
	close({
		// The alternate domain names of the distribution.
		alternative_domain_names?: [...string]

		// The Amazon Resource Name (ARN) of the distribution.
		arn?: string

		// The bundle ID to use for the distribution.
		bundle_id!: string

		// The name of the SSL/TLS certificate attached to the
		// distribution, if any.
		certificate_name?: string

		// The timestamp when the distribution was created.
		created_at?: string

		// The domain name of the distribution.
		domain_name?: string

		// The IP address type of the distribution.
		ip_address_type?: string
		id?:              string

		// Indicates whether the distribution is enabled.
		is_enabled?: bool

		// An object that describes the location of the distribution, such
		// as the AWS Region and Availability Zone.
		location?: [...close({
			availability_zone?: string
			region_name?:       string
		})]

		// The name of the distribution.
		name!: string

		// The public DNS of the origin.
		origin_public_dns?: string
		cache_behavior?: matchN(1, [#cache_behavior, [...#cache_behavior]])
		cache_behavior_settings?: matchN(1, [#cache_behavior_settings, list.MaxItems(1) & [...#cache_behavior_settings]])
		default_cache_behavior!: matchN(1, [#default_cache_behavior, list.MaxItems(1) & [_, ...] & [...#default_cache_behavior]])
		origin!: matchN(1, [#origin, list.MaxItems(1) & [_, ...] & [...#origin]])
		timeouts?: #timeouts

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The Lightsail resource type (e.g., Distribution).
		resource_type?: string

		// The status of the distribution.
		status?: string

		// The support code. Include this code in your email to support
		// when you have questions about your Lightsail distribution.
		// This code enables our support team to look up your Lightsail
		// information more easily.
		support_code?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#cache_behavior: close({
		// The cache behavior for the specified path.
		behavior!: string

		// The path to a directory or file to cached, or not cache. Use an
		// asterisk symbol to specify wildcard directories
		// (path/to/assets/*), and file types (*.html, *jpg, *js).
		// Directories and file paths are case-sensitive.
		path!: string
	})

	#cache_behavior_settings: close({
		// The HTTP methods that are processed and forwarded to the
		// distribution's origin.
		allowed_http_methods?: string

		// The HTTP method responses that are cached by your distribution.
		cached_http_methods?: string

		// The default amount of time that objects stay in the
		// distribution's cache before the distribution forwards another
		// request to the origin to determine whether the content has
		// been updated.
		default_ttl?: number

		// The maximum amount of time that objects stay in the
		// distribution's cache before the distribution forwards another
		// request to the origin to determine whether the object has been
		// updated.
		maximum_ttl?: number

		// The minimum amount of time that objects stay in the
		// distribution's cache before the distribution forwards another
		// request to the origin to determine whether the object has been
		// updated.
		minimum_ttl?: number
		forwarded_cookies?: matchN(1, [_#defs."/$defs/cache_behavior_settings/$defs/forwarded_cookies", list.MaxItems(1) & [..._#defs."/$defs/cache_behavior_settings/$defs/forwarded_cookies"]])
		forwarded_headers?: matchN(1, [_#defs."/$defs/cache_behavior_settings/$defs/forwarded_headers", list.MaxItems(1) & [..._#defs."/$defs/cache_behavior_settings/$defs/forwarded_headers"]])
		forwarded_query_strings?: matchN(1, [_#defs."/$defs/cache_behavior_settings/$defs/forwarded_query_strings", list.MaxItems(1) & [..._#defs."/$defs/cache_behavior_settings/$defs/forwarded_query_strings"]])
	})

	#default_cache_behavior: close({
		// The cache behavior of the distribution.
		behavior!: string
	})

	#origin: close({
		// The name of the origin resource.
		name!: string

		// The protocol that your Amazon Lightsail distribution uses when
		// establishing a connection with your origin to pull content.
		protocol_policy?: string

		// The AWS Region name of the origin resource.
		region_name!: string

		// The resource type of the origin resource (e.g., Instance).
		resource_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/cache_behavior_settings/$defs/forwarded_cookies": close({
		// The specific cookies to forward to your distribution's origin.
		cookies_allow_list?: [...string]

		// Specifies which cookies to forward to the distribution's origin
		// for a cache behavior: all, none, or allow-list to forward only
		// the cookies specified in the cookiesAllowList parameter.
		option?: string
	})

	_#defs: "/$defs/cache_behavior_settings/$defs/forwarded_headers": close({
		// The specific headers to forward to your distribution's origin.
		headers_allow_list?: [...string]

		// The headers that you want your distribution to forward to your
		// origin and base caching on.
		option?: string
	})

	_#defs: "/$defs/cache_behavior_settings/$defs/forwarded_query_strings": close({
		// Indicates whether the distribution forwards and caches based on
		// query strings.
		option?: bool

		// The specific query strings that the distribution forwards to
		// the origin.
		query_strings_allowed_list?: [...string]
	})
}
