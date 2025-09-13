package res

import "list"

#google_network_security_authz_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_security_authz_policy")
	close({
		// When the action is CUSTOM, customProvider must be specified.
		// When the action is ALLOW, only requests matching the policy
		// will be allowed.
		// When the action is DENY, only requests matching the policy will
		// be denied.
		//
		// When a request arrives, the policies are evaluated in the
		// following order:
		// 1. If there is a CUSTOM policy that matches the request, the
		// CUSTOM policy is evaluated using the custom authorization
		// providers and the request is denied if the provider rejects
		// the request.
		// 2. If there are any DENY policies that match the request, the
		// request is denied.
		// 3. If there are no ALLOW policies for the resource or if any of
		// the ALLOW policies match the request, the request is allowed.
		// 4. Else the request is denied by default if none of the
		// configured AuthzPolicies with ALLOW action match the request.
		// Possible values: ["ALLOW", "DENY", "CUSTOM"]
		action!: string

		// The timestamp when the resource was created.
		create_time?: string

		// A human-readable description of the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Set of labels associated with the AuthzExtension resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the resource.
		location!: string

		// Identifier. Name of the AuthzPolicy resource.
		name!:    string
		project?: string
		custom_provider?: matchN(1, [#custom_provider, list.MaxItems(1) & [...#custom_provider]])
		http_rules?: matchN(1, [#http_rules, [...#http_rules]])
		target?: matchN(1, [#target, list.MaxItems(1) & [_, ...] & [...#target]])
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp when the resource was updated.
		update_time?: string
	})

	#custom_provider: close({
		authz_extension?: matchN(1, [_#defs."/$defs/custom_provider/$defs/authz_extension", list.MaxItems(1) & [..._#defs."/$defs/custom_provider/$defs/authz_extension"]])
		cloud_iap?: matchN(1, [_#defs."/$defs/custom_provider/$defs/cloud_iap", list.MaxItems(1) & [..._#defs."/$defs/custom_provider/$defs/cloud_iap"]])
	})

	#http_rules: close({
		from?: matchN(1, [_#defs."/$defs/http_rules/$defs/from", list.MaxItems(1) & [..._#defs."/$defs/http_rules/$defs/from"]])
		to?: matchN(1, [_#defs."/$defs/http_rules/$defs/to", list.MaxItems(1) & [..._#defs."/$defs/http_rules/$defs/to"]])

		// CEL expression that describes the conditions to be satisfied
		// for the action. The result of the CEL expression is ANDed with
		// the from and to. Refer to the CEL language reference for a
		// list of available attributes.
		when?: string
	})

	#target: close({
		// All gateways and forwarding rules referenced by this policy and
		// extensions must share the same load balancing scheme.
		// For more information, refer to [Backend services
		// overview](https://cloud.google.com/load-balancing/docs/backend-service).
		// Possible values: ["INTERNAL_MANAGED", "EXTERNAL_MANAGED",
		// "INTERNAL_SELF_MANAGED"]
		load_balancing_scheme!: string

		// A list of references to the Forwarding Rules on which this
		// policy will be applied.
		resources?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/custom_provider/$defs/authz_extension": close({
		// A list of references to authorization extensions that will be
		// invoked for requests matching this policy. Limited to 1 custom
		// provider.
		resources!: [...string]
	})

	_#defs: "/$defs/custom_provider/$defs/cloud_iap": close({
		// Enable Cloud IAP at the AuthzPolicy level.
		enabled!: bool
	})

	_#defs: "/$defs/http_rules/$defs/from": close({
		not_sources?: matchN(1, [_#defs."/$defs/http_rules/$defs/from/$defs/not_sources", [..._#defs."/$defs/http_rules/$defs/from/$defs/not_sources"]])
		sources?: matchN(1, [_#defs."/$defs/http_rules/$defs/from/$defs/sources", [..._#defs."/$defs/http_rules/$defs/from/$defs/sources"]])
	})

	_#defs: "/$defs/http_rules/$defs/from/$defs/not_sources": close({
		principals?: matchN(1, [_#defs."/$defs/http_rules/$defs/from/$defs/not_sources/$defs/principals", [..._#defs."/$defs/http_rules/$defs/from/$defs/not_sources/$defs/principals"]])
		resources?: matchN(1, [_#defs."/$defs/http_rules/$defs/from/$defs/not_sources/$defs/resources", [..._#defs."/$defs/http_rules/$defs/from/$defs/not_sources/$defs/resources"]])
	})

	_#defs: "/$defs/http_rules/$defs/from/$defs/not_sources/$defs/principals": close({
		// The input string must have the substring specified here. Note:
		// empty contains match is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc.def
		contains?: string

		// The input string must match exactly the string specified here.
		// Examples:
		// * abc only matches the value abc.
		exact?: string

		// If true, indicates the exact/prefix/suffix/contains matching
		// should be case insensitive. For example, the matcher data will
		// match both input string Data and data if set to true.
		ignore_case?: bool

		// The input string must have the prefix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value abc.xyz
		prefix?: string

		// The input string must have the suffix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc
		suffix?: string
	})

	_#defs: "/$defs/http_rules/$defs/from/$defs/not_sources/$defs/resources": close({
		iam_service_account?: matchN(1, [_#defs."/$defs/http_rules/$defs/from/$defs/not_sources/$defs/resources/$defs/iam_service_account", list.MaxItems(1) & [..._#defs."/$defs/http_rules/$defs/from/$defs/not_sources/$defs/resources/$defs/iam_service_account"]])
		tag_value_id_set?: matchN(1, [_#defs."/$defs/http_rules/$defs/from/$defs/not_sources/$defs/resources/$defs/tag_value_id_set", list.MaxItems(1) & [..._#defs."/$defs/http_rules/$defs/from/$defs/not_sources/$defs/resources/$defs/tag_value_id_set"]])
	})

	_#defs: "/$defs/http_rules/$defs/from/$defs/not_sources/$defs/resources/$defs/iam_service_account": close({
		// The input string must have the substring specified here. Note:
		// empty contains match is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc.def
		contains?: string

		// The input string must match exactly the string specified here.
		// Examples:
		// * abc only matches the value abc.
		exact?: string

		// If true, indicates the exact/prefix/suffix/contains matching
		// should be case insensitive. For example, the matcher data will
		// match both input string Data and data if set to true.
		ignore_case?: bool

		// The input string must have the prefix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value abc.xyz
		prefix?: string

		// The input string must have the suffix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc
		suffix?: string
	})

	_#defs: "/$defs/http_rules/$defs/from/$defs/not_sources/$defs/resources/$defs/tag_value_id_set": close({
		// A list of resource tag value permanent IDs to match against the
		// resource manager tags value associated with the source VM of a
		// request. The match follows AND semantics which means all the
		// ids must match.
		// Limited to 5 matches.
		ids?: [...string]
	})

	_#defs: "/$defs/http_rules/$defs/from/$defs/sources": close({
		principals?: matchN(1, [_#defs."/$defs/http_rules/$defs/from/$defs/sources/$defs/principals", [..._#defs."/$defs/http_rules/$defs/from/$defs/sources/$defs/principals"]])
		resources?: matchN(1, [_#defs."/$defs/http_rules/$defs/from/$defs/sources/$defs/resources", [..._#defs."/$defs/http_rules/$defs/from/$defs/sources/$defs/resources"]])
	})

	_#defs: "/$defs/http_rules/$defs/from/$defs/sources/$defs/principals": close({
		// The input string must have the substring specified here. Note:
		// empty contains match is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc.def
		contains?: string

		// The input string must match exactly the string specified here.
		// Examples:
		// * abc only matches the value abc.
		exact?: string

		// If true, indicates the exact/prefix/suffix/contains matching
		// should be case insensitive. For example, the matcher data will
		// match both input string Data and data if set to true.
		ignore_case?: bool

		// The input string must have the prefix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value abc.xyz
		prefix?: string

		// The input string must have the suffix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc
		suffix?: string
	})

	_#defs: "/$defs/http_rules/$defs/from/$defs/sources/$defs/resources": close({
		iam_service_account?: matchN(1, [_#defs."/$defs/http_rules/$defs/from/$defs/sources/$defs/resources/$defs/iam_service_account", list.MaxItems(1) & [..._#defs."/$defs/http_rules/$defs/from/$defs/sources/$defs/resources/$defs/iam_service_account"]])
		tag_value_id_set?: matchN(1, [_#defs."/$defs/http_rules/$defs/from/$defs/sources/$defs/resources/$defs/tag_value_id_set", list.MaxItems(1) & [..._#defs."/$defs/http_rules/$defs/from/$defs/sources/$defs/resources/$defs/tag_value_id_set"]])
	})

	_#defs: "/$defs/http_rules/$defs/from/$defs/sources/$defs/resources/$defs/iam_service_account": close({
		// The input string must have the substring specified here. Note:
		// empty contains match is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc.def
		contains?: string

		// The input string must match exactly the string specified here.
		// Examples:
		// * abc only matches the value abc.
		exact?: string

		// If true, indicates the exact/prefix/suffix/contains matching
		// should be case insensitive. For example, the matcher data will
		// match both input string Data and data if set to true.
		ignore_case?: bool

		// The input string must have the prefix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value abc.xyz
		prefix?: string

		// The input string must have the suffix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc
		suffix?: string
	})

	_#defs: "/$defs/http_rules/$defs/from/$defs/sources/$defs/resources/$defs/tag_value_id_set": close({
		// A list of resource tag value permanent IDs to match against the
		// resource manager tags value associated with the source VM of a
		// request. The match follows AND semantics which means all the
		// ids must match.
		// Limited to 5 matches.
		ids?: [...string]
	})

	_#defs: "/$defs/http_rules/$defs/to": close({
		not_operations?: matchN(1, [_#defs."/$defs/http_rules/$defs/to/$defs/not_operations", [..._#defs."/$defs/http_rules/$defs/to/$defs/not_operations"]])
		operations?: matchN(1, [_#defs."/$defs/http_rules/$defs/to/$defs/operations", [..._#defs."/$defs/http_rules/$defs/to/$defs/operations"]])
	})

	_#defs: "/$defs/http_rules/$defs/to/$defs/not_operations": close({
		header_set?: matchN(1, [_#defs."/$defs/http_rules/$defs/to/$defs/not_operations/$defs/header_set", list.MaxItems(1) & [..._#defs."/$defs/http_rules/$defs/to/$defs/not_operations/$defs/header_set"]])
		hosts?: matchN(1, [_#defs."/$defs/http_rules/$defs/to/$defs/not_operations/$defs/hosts", [..._#defs."/$defs/http_rules/$defs/to/$defs/not_operations/$defs/hosts"]])
		paths?: matchN(1, [_#defs."/$defs/http_rules/$defs/to/$defs/not_operations/$defs/paths", [..._#defs."/$defs/http_rules/$defs/to/$defs/not_operations/$defs/paths"]])

		// A list of HTTP methods to match against. Each entry must be a
		// valid HTTP method name (GET, PUT, POST, HEAD, PATCH, DELETE,
		// OPTIONS). It only allows exact match and is always case
		// sensitive.
		methods?: [...string]
	})

	_#defs: "/$defs/http_rules/$defs/to/$defs/not_operations/$defs/header_set": close({
		headers?: matchN(1, [_#defs."/$defs/http_rules/$defs/to/$defs/not_operations/$defs/header_set/$defs/headers", [..._#defs."/$defs/http_rules/$defs/to/$defs/not_operations/$defs/header_set/$defs/headers"]])
	})

	_#defs: "/$defs/http_rules/$defs/to/$defs/not_operations/$defs/header_set/$defs/headers": close({
		value?: matchN(1, [_#defs."/$defs/http_rules/$defs/to/$defs/not_operations/$defs/header_set/$defs/headers/$defs/value", list.MaxItems(1) & [..._#defs."/$defs/http_rules/$defs/to/$defs/not_operations/$defs/header_set/$defs/headers/$defs/value"]])

		// Specifies the name of the header in the request.
		name?: string
	})

	_#defs: "/$defs/http_rules/$defs/to/$defs/not_operations/$defs/header_set/$defs/headers/$defs/value": close({
		// The input string must have the substring specified here. Note:
		// empty contains match is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc.def
		contains?: string

		// The input string must match exactly the string specified here.
		// Examples:
		// * abc only matches the value abc.
		exact?: string

		// If true, indicates the exact/prefix/suffix/contains matching
		// should be case insensitive. For example, the matcher data will
		// match both input string Data and data if set to true.
		ignore_case?: bool

		// The input string must have the prefix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value abc.xyz
		prefix?: string

		// The input string must have the suffix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc
		suffix?: string
	})

	_#defs: "/$defs/http_rules/$defs/to/$defs/not_operations/$defs/hosts": close({
		// The input string must have the substring specified here. Note:
		// empty contains match is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc.def
		contains?: string

		// The input string must match exactly the string specified here.
		// Examples:
		// * abc only matches the value abc.
		exact?: string

		// If true, indicates the exact/prefix/suffix/contains matching
		// should be case insensitive. For example, the matcher data will
		// match both input string Data and data if set to true.
		ignore_case?: bool

		// The input string must have the prefix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value abc.xyz
		prefix?: string

		// The input string must have the suffix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc
		suffix?: string
	})

	_#defs: "/$defs/http_rules/$defs/to/$defs/not_operations/$defs/paths": close({
		// The input string must have the substring specified here. Note:
		// empty contains match is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc.def
		contains?: string

		// The input string must match exactly the string specified here.
		// Examples:
		// * abc only matches the value abc.
		exact?: string

		// If true, indicates the exact/prefix/suffix/contains matching
		// should be case insensitive. For example, the matcher data will
		// match both input string Data and data if set to true.
		ignore_case?: bool

		// The input string must have the prefix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value abc.xyz
		prefix?: string

		// The input string must have the suffix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc
		suffix?: string
	})

	_#defs: "/$defs/http_rules/$defs/to/$defs/operations": close({
		header_set?: matchN(1, [_#defs."/$defs/http_rules/$defs/to/$defs/operations/$defs/header_set", list.MaxItems(1) & [..._#defs."/$defs/http_rules/$defs/to/$defs/operations/$defs/header_set"]])
		hosts?: matchN(1, [_#defs."/$defs/http_rules/$defs/to/$defs/operations/$defs/hosts", [..._#defs."/$defs/http_rules/$defs/to/$defs/operations/$defs/hosts"]])
		paths?: matchN(1, [_#defs."/$defs/http_rules/$defs/to/$defs/operations/$defs/paths", [..._#defs."/$defs/http_rules/$defs/to/$defs/operations/$defs/paths"]])

		// A list of HTTP methods to match against. Each entry must be a
		// valid HTTP method name (GET, PUT, POST, HEAD, PATCH, DELETE,
		// OPTIONS). It only allows exact match and is always case
		// sensitive.
		methods?: [...string]
	})

	_#defs: "/$defs/http_rules/$defs/to/$defs/operations/$defs/header_set": close({
		headers?: matchN(1, [_#defs."/$defs/http_rules/$defs/to/$defs/operations/$defs/header_set/$defs/headers", [..._#defs."/$defs/http_rules/$defs/to/$defs/operations/$defs/header_set/$defs/headers"]])
	})

	_#defs: "/$defs/http_rules/$defs/to/$defs/operations/$defs/header_set/$defs/headers": close({
		value?: matchN(1, [_#defs."/$defs/http_rules/$defs/to/$defs/operations/$defs/header_set/$defs/headers/$defs/value", list.MaxItems(1) & [..._#defs."/$defs/http_rules/$defs/to/$defs/operations/$defs/header_set/$defs/headers/$defs/value"]])

		// Specifies the name of the header in the request.
		name?: string
	})

	_#defs: "/$defs/http_rules/$defs/to/$defs/operations/$defs/header_set/$defs/headers/$defs/value": close({
		// The input string must have the substring specified here. Note:
		// empty contains match is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc.def
		contains?: string

		// The input string must match exactly the string specified here.
		// Examples:
		// * abc only matches the value abc.
		exact?: string

		// If true, indicates the exact/prefix/suffix/contains matching
		// should be case insensitive. For example, the matcher data will
		// match both input string Data and data if set to true.
		ignore_case?: bool

		// The input string must have the prefix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value abc.xyz
		prefix?: string

		// The input string must have the suffix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc
		suffix?: string
	})

	_#defs: "/$defs/http_rules/$defs/to/$defs/operations/$defs/hosts": close({
		// The input string must have the substring specified here. Note:
		// empty contains match is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc.def
		contains?: string

		// The input string must match exactly the string specified here.
		// Examples:
		// * abc only matches the value abc.
		exact?: string

		// If true, indicates the exact/prefix/suffix/contains matching
		// should be case insensitive. For example, the matcher data will
		// match both input string Data and data if set to true.
		ignore_case?: bool

		// The input string must have the prefix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value abc.xyz
		prefix?: string

		// The input string must have the suffix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc
		suffix?: string
	})

	_#defs: "/$defs/http_rules/$defs/to/$defs/operations/$defs/paths": close({
		// The input string must have the substring specified here. Note:
		// empty contains match is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc.def
		contains?: string

		// The input string must match exactly the string specified here.
		// Examples:
		// * abc only matches the value abc.
		exact?: string

		// If true, indicates the exact/prefix/suffix/contains matching
		// should be case insensitive. For example, the matcher data will
		// match both input string Data and data if set to true.
		ignore_case?: bool

		// The input string must have the prefix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value abc.xyz
		prefix?: string

		// The input string must have the suffix specified here. Note:
		// empty prefix is not allowed, please use regex instead.
		// Examples:
		// * abc matches the value xyz.abc
		suffix?: string
	})
}
