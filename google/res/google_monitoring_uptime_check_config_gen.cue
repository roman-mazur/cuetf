package res

import "list"

#google_monitoring_uptime_check_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_monitoring_uptime_check_config")
	close({
		// The checker type to use for the check. If the monitored
		// resource type is 'servicedirectory_service', 'checker_type'
		// must be set to 'VPC_CHECKERS'. Possible values:
		// ["STATIC_IP_CHECKERS", "VPC_CHECKERS"]
		checker_type?: string

		// A human-friendly name for the uptime check configuration. The
		// display name should be unique within a Stackdriver Workspace
		// in order to make it easier to identify; however, uniqueness is
		// not enforced.
		display_name!: string

		// Specifies whether to log the results of failed probes to Cloud
		// Logging.
		log_check_failures?: bool
		id?:                 string

		// A unique resource name for this UptimeCheckConfig. The format
		// is
		// 'projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID]'.
		name?: string

		// How often, in seconds, the uptime check is performed.
		// Currently, the only supported values are 60s (1 minute), 300s
		// (5 minutes), 600s (10 minutes), and 900s (15 minutes).
		// Optional, defaults to 300s.
		period?: string

		// The list of regions from which the check will be run. Some
		// regions contain one location, and others contain more than
		// one. If this field is specified, enough regions to include a
		// minimum of 3 locations must be provided, or an error message
		// is returned. Not specifying this field will result in uptime
		// checks running from all regions.
		selected_regions?: [...string]

		// The maximum amount of time to wait for the request to complete
		// (must be between 1 and 60 seconds). [See the accepted
		// formats](
		// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration)
		timeout!: string
		project?: string
		content_matchers?: matchN(1, [#content_matchers, [...#content_matchers]])
		http_check?: matchN(1, [#http_check, list.MaxItems(1) & [...#http_check]])
		monitored_resource?: matchN(1, [#monitored_resource, list.MaxItems(1) & [...#monitored_resource]])
		resource_group?: matchN(1, [#resource_group, list.MaxItems(1) & [...#resource_group]])
		synthetic_monitor?: matchN(1, [#synthetic_monitor, list.MaxItems(1) & [...#synthetic_monitor]])
		tcp_check?: matchN(1, [#tcp_check, list.MaxItems(1) & [...#tcp_check]])

		// The id of the uptime check
		uptime_check_id?: string
		timeouts?:        #timeouts

		// User-supplied key/value data to be used for organizing and
		// identifying the 'UptimeCheckConfig' objects. The field can
		// contain up to 64 entries. Each key and value is limited to 63
		// Unicode characters or 128 bytes, whichever is smaller. Labels
		// and values can contain only lowercase letters, numerals,
		// underscores, and dashes. Keys must begin with a letter.
		user_labels?: [string]: string
	})

	#content_matchers: close({
		json_path_matcher?: matchN(1, [_#defs."/$defs/content_matchers/$defs/json_path_matcher", list.MaxItems(1) & [..._#defs."/$defs/content_matchers/$defs/json_path_matcher"]])

		// String or regex content to match (max 1024 bytes)
		content!: string

		// The type of content matcher that will be applied to the server
		// output, compared to the content string when the check is run.
		// Default value: "CONTAINS_STRING" Possible values:
		// ["CONTAINS_STRING", "NOT_CONTAINS_STRING", "MATCHES_REGEX",
		// "NOT_MATCHES_REGEX", "MATCHES_JSON_PATH",
		// "NOT_MATCHES_JSON_PATH"]
		matcher?: string
	})

	#http_check: close({
		// The request body associated with the HTTP POST request. If
		// 'content_type' is 'URL_ENCODED', the body passed in must be
		// URL-encoded. Users can provide a 'Content-Length' header via
		// the 'headers' field or the API will do so. If the
		// 'request_method' is 'GET' and 'body' is not empty, the API
		// will return an error. The maximum byte size is 1 megabyte.
		// Note - As with all bytes fields JSON representations are
		// base64 encoded. e.g. 'foo=bar' in URL-encoded form is
		// 'foo%3Dbar' and in base64 encoding is 'Zm9vJTI1M0RiYXI='.
		body?: string

		// The content type to use for the check. Possible values:
		// ["TYPE_UNSPECIFIED", "URL_ENCODED", "USER_PROVIDED"]
		content_type?: string

		// A user provided content type header to use for the check. The
		// invalid configurations outlined in the 'content_type' field
		// apply to custom_content_type', as well as the following 1.
		// 'content_type' is 'URL_ENCODED' and 'custom_content_type' is
		// set. 2. 'content_type' is 'USER_PROVIDED' and
		// 'custom_content_type' is not set.
		custom_content_type?: string

		// The list of headers to send as part of the uptime check
		// request. If two headers have the same key and different
		// values, they should be entered as a single header, with the
		// value being a comma-separated list of all the desired values
		// as described in [RFC 2616 (page
		// 31)](https://www.w3.org/Protocols/rfc2616/rfc2616.txt).
		// Entering two separate headers with the same key in a Create
		// call will cause the first to be overwritten by the second. The
		// maximum number of headers allowed is 100.
		headers?: [string]: string

		// Boolean specifying whether to encrypt the header information.
		// Encryption should be specified for any headers related to
		// authentication that you do not wish to be seen when retrieving
		// the configuration. The server will be responsible for
		// encrypting the headers. On Get/List calls, if 'mask_headers'
		// is set to 'true' then the headers will be obscured with
		// '******'.
		mask_headers?: bool

		// The path to the page to run the check against. Will be combined
		// with the host (specified within the MonitoredResource) and
		// port to construct the full URL. If the provided path does not
		// begin with '/', a '/' will be prepended automatically.
		// Optional (defaults to '/').
		path?: string

		// The port to the page to run the check against. Will be combined
		// with 'host' (specified within the
		// ['monitored_resource'](#nested_monitored_resource)) and path
		// to construct the full URL. Optional (defaults to 80 without
		// SSL, or 443 with SSL).
		port?: number

		// The HTTP request method to use for the check. If set to
		// 'METHOD_UNSPECIFIED' then 'request_method' defaults to 'GET'.
		// Default value: "GET" Possible values: ["METHOD_UNSPECIFIED",
		// "GET", "POST"]
		request_method?: string
		accepted_response_status_codes?: matchN(1, [_#defs."/$defs/http_check/$defs/accepted_response_status_codes", [..._#defs."/$defs/http_check/$defs/accepted_response_status_codes"]])
		auth_info?: matchN(1, [_#defs."/$defs/http_check/$defs/auth_info", list.MaxItems(1) & [..._#defs."/$defs/http_check/$defs/auth_info"]])
		ping_config?: matchN(1, [_#defs."/$defs/http_check/$defs/ping_config", list.MaxItems(1) & [..._#defs."/$defs/http_check/$defs/ping_config"]])
		service_agent_authentication?: matchN(1, [_#defs."/$defs/http_check/$defs/service_agent_authentication", list.MaxItems(1) & [..._#defs."/$defs/http_check/$defs/service_agent_authentication"]])

		// If true, use HTTPS instead of HTTP to run the check.
		use_ssl?: bool

		// Boolean specifying whether to include SSL certificate
		// validation as a part of the Uptime check. Only applies to
		// checks where 'monitored_resource' is set to 'uptime_url'. If
		// 'use_ssl' is 'false', setting 'validate_ssl' to 'true' has no
		// effect.
		validate_ssl?: bool
	})

	#monitored_resource: close({
		// Values for all of the labels listed in the associated monitored
		// resource descriptor. For example, Compute Engine VM instances
		// use the labels 'project_id', 'instance_id', and 'zone'.
		labels!: [string]: string

		// The monitored resource type. This field must match the type
		// field of a
		// ['MonitoredResourceDescriptor'](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.monitoredResourceDescriptors#MonitoredResourceDescriptor)
		// object. For example, the type of a Compute Engine VM instance
		// is 'gce_instance'. For a list of types, see [Monitoring
		// resource
		// types](https://cloud.google.com/monitoring/api/resources) and
		// [Logging resource
		// types](https://cloud.google.com/logging/docs/api/v2/resource-list).
		type!: string
	})

	#resource_group: close({
		// The group of resources being monitored. Should be the 'name' of
		// a group
		group_id?: string

		// The resource type of the group members. Possible values:
		// ["RESOURCE_TYPE_UNSPECIFIED", "INSTANCE",
		// "AWS_ELB_LOAD_BALANCER"]
		resource_type?: string
	})

	#synthetic_monitor: close({
		cloud_function_v2!: matchN(1, [_#defs."/$defs/synthetic_monitor/$defs/cloud_function_v2", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/synthetic_monitor/$defs/cloud_function_v2"]])
	})

	#tcp_check: close({
		ping_config?: matchN(1, [_#defs."/$defs/tcp_check/$defs/ping_config", list.MaxItems(1) & [..._#defs."/$defs/tcp_check/$defs/ping_config"]])

		// The port to the page to run the check against. Will be combined
		// with host (specified within the 'monitored_resource') to
		// construct the full URL.
		port!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/content_matchers/$defs/json_path_matcher": close({
		// Options to perform JSONPath content matching. Default value:
		// "EXACT_MATCH" Possible values: ["EXACT_MATCH", "REGEX_MATCH"]
		json_matcher?: string

		// JSONPath within the response output pointing to the expected
		// 'ContentMatcher::content' to match against.
		json_path!: string
	})

	_#defs: "/$defs/http_check/$defs/accepted_response_status_codes": close({
		// A class of status codes to accept. Possible values:
		// ["STATUS_CLASS_1XX", "STATUS_CLASS_2XX", "STATUS_CLASS_3XX",
		// "STATUS_CLASS_4XX", "STATUS_CLASS_5XX", "STATUS_CLASS_ANY"]
		status_class?: string

		// A status code to accept.
		status_value?: number
	})

	_#defs: "/$defs/http_check/$defs/auth_info": close({
		// The password to authenticate.
		password?: string

		// The password to authenticate.
		password_wo?: string

		// The password write-only version.
		password_wo_version?: string

		// The username to authenticate.
		username!: string
	})

	_#defs: "/$defs/http_check/$defs/ping_config": close({
		// Number of ICMP pings. A maximum of 3 ICMP pings is currently
		// supported.
		pings_count!: number
	})

	_#defs: "/$defs/http_check/$defs/service_agent_authentication": close({
		// The type of authentication to use. Possible values:
		// ["SERVICE_AGENT_AUTHENTICATION_TYPE_UNSPECIFIED",
		// "OIDC_TOKEN"]
		type?: string
	})

	_#defs: "/$defs/synthetic_monitor/$defs/cloud_function_v2": close({
		// The fully qualified name of the cloud function resource.
		name!: string
	})

	_#defs: "/$defs/tcp_check/$defs/ping_config": close({
		// Number of ICMP pings. A maximum of 3 ICMP pings is currently
		// supported.
		pings_count!: number
	})
}
