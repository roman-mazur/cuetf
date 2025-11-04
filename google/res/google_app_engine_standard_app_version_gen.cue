package res

import "list"

#google_app_engine_standard_app_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_app_engine_standard_app_version")
	close({
		// Allows App Engine second generation runtimes to access the
		// legacy bundled services.
		app_engine_apis?: bool
		automatic_scaling?: matchN(1, [#automatic_scaling, list.MaxItems(1) & [...#automatic_scaling]])

		// If set to 'true', the service will be deleted if it is the last
		// version.
		delete_service_on_destroy?: bool

		// Environment variables available to the application.
		env_variables?: [string]: string

		// A list of the types of messages that this application is able
		// to receive. Possible values: ["INBOUND_SERVICE_MAIL",
		// "INBOUND_SERVICE_MAIL_BOUNCE", "INBOUND_SERVICE_XMPP_ERROR",
		// "INBOUND_SERVICE_XMPP_MESSAGE",
		// "INBOUND_SERVICE_XMPP_SUBSCRIBE",
		// "INBOUND_SERVICE_XMPP_PRESENCE",
		// "INBOUND_SERVICE_CHANNEL_PRESENCE", "INBOUND_SERVICE_WARMUP"]
		inbound_services?: [...string]

		// Instance class that is used to run this version. Valid values
		// are
		// AutomaticScaling: F1, F2, F4, F4_1G
		// BasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8
		// Defaults to F1 for AutomaticScaling and B2 for ManualScaling
		// and BasicScaling. If no scaling is specified, AutomaticScaling
		// is chosen.
		instance_class?: string

		// Full path to the Version resource in the API. Example, "v1".
		name?: string
		id?:   string

		// If set to 'true', the application version will not be deleted.
		noop_on_destroy?: bool

		// Desired runtime. Example python27.
		runtime!: string
		project?: string
		basic_scaling?: matchN(1, [#basic_scaling, list.MaxItems(1) & [...#basic_scaling]])
		deployment!: matchN(1, [#deployment, list.MaxItems(1) & [_, ...] & [...#deployment]])
		entrypoint!: matchN(1, [#entrypoint, list.MaxItems(1) & [_, ...] & [...#entrypoint]])
		handlers?: matchN(1, [#handlers, [...#handlers]])
		libraries?: matchN(1, [#libraries, [...#libraries]])
		manual_scaling?: matchN(1, [#manual_scaling, list.MaxItems(1) & [...#manual_scaling]])
		timeouts?: #timeouts
		vpc_access_connector?: matchN(1, [#vpc_access_connector, list.MaxItems(1) & [...#vpc_access_connector]])

		// The version of the API in the given runtime environment.
		// Please see the app.yaml reference for valid values at
		// 'https://cloud.google.com/appengine/docs/standard/<language>/config/appref'\
		// Substitute '<language>' with 'python', 'java', 'php', 'ruby',
		// 'go' or 'nodejs'.
		runtime_api_version?: string

		// AppEngine service resource
		service!: string

		// The identity that the deployed version will run as. Admin API
		// will use the App Engine Appspot service account as default if
		// this field is neither provided in app.yaml file nor through
		// CLI flag.
		service_account?: string

		// Whether multiple requests can be dispatched to this version at
		// once.
		threadsafe?: bool

		// Relative name of the version within the service. For example,
		// 'v1'. Version names can contain only lowercase letters,
		// numbers, or hyphens. Reserved names,"default", "latest", and
		// any name with the prefix "ah-".
		version_id?: string
	})

	#automatic_scaling: close({
		// Number of concurrent requests an automatic scaling instance can
		// accept before the scheduler spawns a new instance.
		//
		// Defaults to a runtime-specific value.
		max_concurrent_requests?: number

		// Maximum number of idle instances that should be maintained for
		// this version.
		max_idle_instances?: number

		// Maximum amount of time that a request should wait in the
		// pending queue before starting a new instance to handle it.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		max_pending_latency?: string

		// Minimum number of idle instances that should be maintained for
		// this version. Only applicable for the default version of a
		// service.
		min_idle_instances?: number
		standard_scheduler_settings?: matchN(1, [_#defs."/$defs/automatic_scaling/$defs/standard_scheduler_settings", list.MaxItems(1) & [..._#defs."/$defs/automatic_scaling/$defs/standard_scheduler_settings"]])

		// Minimum amount of time a request should wait in the pending
		// queue before starting a new instance to handle it.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		min_pending_latency?: string
	})

	#basic_scaling: close({
		// Duration of time after the last request that an instance must
		// wait before the instance is shut down.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s". Defaults to 900s.
		idle_timeout?: string

		// Maximum number of instances to create for this version. Must be
		// in the range [1.0, 200.0].
		max_instances!: number
	})

	#deployment: close({
		files?: matchN(1, [_#defs."/$defs/deployment/$defs/files", [..._#defs."/$defs/deployment/$defs/files"]])
		zip?: matchN(1, [_#defs."/$defs/deployment/$defs/zip", list.MaxItems(1) & [..._#defs."/$defs/deployment/$defs/zip"]])
	})

	#entrypoint: close({
		// The format should be a shell command that can be fed to bash
		// -c.
		shell!: string
	})

	#handlers: close({
		// Actions to take when the user is not logged in. Possible
		// values: ["AUTH_FAIL_ACTION_REDIRECT",
		// "AUTH_FAIL_ACTION_UNAUTHORIZED"]
		auth_fail_action?: string

		// Methods to restrict access to a URL based on login status.
		// Possible values: ["LOGIN_OPTIONAL", "LOGIN_ADMIN",
		// "LOGIN_REQUIRED"]
		login?: string

		// 30x code to use when performing redirects for the secure field.
		// Possible values: ["REDIRECT_HTTP_RESPONSE_CODE_301",
		// "REDIRECT_HTTP_RESPONSE_CODE_302",
		// "REDIRECT_HTTP_RESPONSE_CODE_303",
		// "REDIRECT_HTTP_RESPONSE_CODE_307"]
		redirect_http_response_code?: string

		// Security (HTTPS) enforcement for this URL. Possible values:
		// ["SECURE_DEFAULT", "SECURE_NEVER", "SECURE_OPTIONAL",
		// "SECURE_ALWAYS"]
		security_level?: string
		script?: matchN(1, [_#defs."/$defs/handlers/$defs/script", list.MaxItems(1) & [..._#defs."/$defs/handlers/$defs/script"]])
		static_files?: matchN(1, [_#defs."/$defs/handlers/$defs/static_files", list.MaxItems(1) & [..._#defs."/$defs/handlers/$defs/static_files"]])

		// URL prefix. Uses regular expression syntax, which means regexp
		// special characters must be escaped, but should not contain
		// groupings.
		// All URLs that begin with this prefix are handled by this
		// handler, using the portion of the URL after the prefix as part
		// of the file path.
		url_regex?: string
	})

	#libraries: close({
		// Name of the library. Example "django".
		name?: string

		// Version of the library to select, or "latest".
		version?: string
	})

	#manual_scaling: close({
		// Number of instances to assign to the service at the start.
		//
		// **Note:** When managing the number of instances at runtime
		// through the App Engine Admin API or the (now deprecated)
		// Python 2
		// Modules API set_num_instances() you must use
		// 'lifecycle.ignore_changes = ["manual_scaling"[0].instances]'
		// to prevent drift detection.
		instances!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_access_connector: close({
		// The egress setting for the connector, controlling what traffic
		// is diverted through it.
		egress_setting?: string

		// Full Serverless VPC Access Connector name e.g.
		// /projects/my-project/locations/us-central1/connectors/c1.
		name!: string
	})

	_#defs: "/$defs/automatic_scaling/$defs/standard_scheduler_settings": close({
		// Maximum number of instances to run for this version. Set to
		// zero to disable maxInstances configuration.
		//
		// **Note:** Starting from March 2025, App Engine sets the
		// maxInstances default for standard environment deployments to
		// 20. This change doesn't impact existing apps. To override the
		// default, specify a new value between 0 and 2147483647, and
		// deploy a new version or redeploy over an existing version. To
		// disable the maxInstances default configuration setting,
		// specify the maximum permitted value 2147483647.
		max_instances?: number

		// Minimum number of instances to run for this version. Set to
		// zero to disable minInstances configuration.
		min_instances?: number

		// Target CPU utilization ratio to maintain when scaling. Should
		// be a value in the range [0.50, 0.95], zero, or a negative
		// value.
		target_cpu_utilization?: number

		// Target throughput utilization ratio to maintain when scaling.
		// Should be a value in the range [0.50, 0.95], zero, or a
		// negative value.
		target_throughput_utilization?: number
	})

	_#defs: "/$defs/deployment/$defs/files": close({
		name!: string

		// SHA1 checksum of the file
		sha1_sum?: string

		// Source URL
		source_url!: string
	})

	_#defs: "/$defs/deployment/$defs/zip": close({
		// files count
		files_count?: number

		// Source URL
		source_url!: string
	})

	_#defs: "/$defs/handlers/$defs/script": close({
		// Path to the script from the application root directory.
		script_path!: string
	})

	_#defs: "/$defs/handlers/$defs/static_files": close({
		// Whether files should also be uploaded as code data. By default,
		// files declared in static file handlers are uploaded as
		// static data and are only served to end users; they cannot be
		// read by the application. If enabled, uploads are charged
		// against both your code and static data storage resource quotas.
		application_readable?: bool

		// Time a static file served by this handler should be cached by
		// web proxies and browsers.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example "3.5s".
		expiration?: string

		// HTTP headers to use for all responses from these URLs.
		// An object containing a list of "key:value" value pairs.".
		http_headers?: [string]: string

		// MIME type used to serve all files served by this handler.
		// Defaults to file-specific MIME types, which are derived from
		// each file's filename extension.
		mime_type?: string

		// Path to the static files matched by the URL pattern, from the
		// application root directory. The path can refer to text matched
		// in groupings in the URL pattern.
		path?: string

		// Whether this handler should match the request if the file
		// referenced by the handler does not exist.
		require_matching_file?: bool

		// Regular expression that matches the file paths for all files
		// that should be referenced by this handler.
		upload_path_regex?: string
	})
}
