package res

import "list"

#google_app_engine_flexible_app_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_app_engine_flexible_app_version")
	close({
		// Metadata settings that are supplied to this version to enable
		// beta runtime features.
		beta_settings?: [string]: string

		// Duration that static files should be cached by web proxies and
		// browsers.
		// Only applicable if the corresponding StaticFilesHandler does
		// not specify its own expiration time.
		default_expiration?: string

		// If set to 'true', the service will be deleted if it is the last
		// version.
		delete_service_on_destroy?: bool

		// Environment variables available to the application. As these
		// are not returned in the API request, Terraform will not detect
		// any changes made outside of the Terraform config.
		env_variables?: [string]: string

		// A list of the types of messages that this application is able
		// to receive. Possible values: ["INBOUND_SERVICE_MAIL",
		// "INBOUND_SERVICE_MAIL_BOUNCE", "INBOUND_SERVICE_XMPP_ERROR",
		// "INBOUND_SERVICE_XMPP_MESSAGE",
		// "INBOUND_SERVICE_XMPP_SUBSCRIBE",
		// "INBOUND_SERVICE_XMPP_PRESENCE",
		// "INBOUND_SERVICE_CHANNEL_PRESENCE", "INBOUND_SERVICE_WARMUP"]
		inbound_services?: [...string]
		api_config?: matchN(1, [#api_config, list.MaxItems(1) & [...#api_config]])

		// Instance class that is used to run this version. Valid values
		// are
		// AutomaticScaling: F1, F2, F4, F4_1G
		// ManualScaling: B1, B2, B4, B8, B4_1G
		// Defaults to F1 for AutomaticScaling and B1 for ManualScaling.
		instance_class?: string

		// Full path to the Version resource in the API. Example, "v1".
		name?: string
		id?:   string

		// Files that match this pattern will not be built into this
		// version. Only applicable for Go runtimes.
		nobuild_files_regex?: string

		// If set to 'true', the application version will not be deleted.
		noop_on_destroy?: bool

		// Desired runtime. Example python27.
		runtime!: string
		project?: string
		automatic_scaling?: matchN(1, [#automatic_scaling, list.MaxItems(1) & [...#automatic_scaling]])
		deployment?: matchN(1, [#deployment, list.MaxItems(1) & [...#deployment]])
		endpoints_api_service?: matchN(1, [#endpoints_api_service, list.MaxItems(1) & [...#endpoints_api_service]])
		entrypoint?: matchN(1, [#entrypoint, list.MaxItems(1) & [...#entrypoint]])
		flexible_runtime_settings?: matchN(1, [#flexible_runtime_settings, list.MaxItems(1) & [...#flexible_runtime_settings]])
		handlers?: matchN(1, [#handlers, [...#handlers]])
		liveness_check?: matchN(1, [#liveness_check, list.MaxItems(1) & [_, ...] & [...#liveness_check]])
		manual_scaling?: matchN(1, [#manual_scaling, list.MaxItems(1) & [...#manual_scaling]])
		network?: matchN(1, [#network, list.MaxItems(1) & [...#network]])
		readiness_check?: matchN(1, [#readiness_check, list.MaxItems(1) & [_, ...] & [...#readiness_check]])
		resources?: matchN(1, [#resources, list.MaxItems(1) & [...#resources]])

		// The version of the API in the given runtime environment.
		// Please see the app.yaml reference for valid values at
		// 'https://cloud.google.com/appengine/docs/standard/<language>/config/appref'\
		// Substitute '<language>' with 'python', 'java', 'php', 'ruby',
		// 'go' or 'nodejs'.
		runtime_api_version?: string

		// The channel of the runtime to use. Only available for some
		// runtimes.
		runtime_channel?: string
		timeouts?:        #timeouts
		vpc_access_connector?: matchN(1, [#vpc_access_connector, list.MaxItems(1) & [...#vpc_access_connector]])

		// The path or name of the app's main executable.
		runtime_main_executable_path?: string

		// AppEngine service resource. Can contain numbers, letters, and
		// hyphens.
		service!: string

		// The identity that the deployed version will run as. Admin API
		// will use the App Engine Appspot service account as
		// default if this field is neither provided in app.yaml file nor
		// through CLI flag.
		service_account?: string

		// Current serving status of this version. Only the versions with
		// a SERVING status create instances and can be billed. Default
		// value: "SERVING" Possible values: ["SERVING", "STOPPED"]
		serving_status?: string

		// Relative name of the version within the service. For example,
		// 'v1'. Version names can contain only lowercase letters,
		// numbers, or hyphens.
		// Reserved names,"default", "latest", and any name with the
		// prefix "ah-".
		version_id?: string
	})

	#api_config: close({
		// Action to take when users access resources that require
		// authentication. Default value: "AUTH_FAIL_ACTION_REDIRECT"
		// Possible values: ["AUTH_FAIL_ACTION_REDIRECT",
		// "AUTH_FAIL_ACTION_UNAUTHORIZED"]
		auth_fail_action?: string

		// Level of login required to access this resource. Default value:
		// "LOGIN_OPTIONAL" Possible values: ["LOGIN_OPTIONAL",
		// "LOGIN_ADMIN", "LOGIN_REQUIRED"]
		login?: string

		// Path to the script from the application root directory.
		script!: string

		// Security (HTTPS) enforcement for this URL. Possible values:
		// ["SECURE_DEFAULT", "SECURE_NEVER", "SECURE_OPTIONAL",
		// "SECURE_ALWAYS"]
		security_level?: string

		// URL to serve the endpoint at.
		url?: string
	})

	#automatic_scaling: close({
		// The time period that the Autoscaler should wait before it
		// starts collecting information from a new instance.
		// This prevents the autoscaler from collecting information when
		// the instance is initializing,
		// during which the collected usage would not be reliable.
		// Default: 120s
		cool_down_period?: string

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
		max_pending_latency?: string

		// Maximum number of instances that should be started to handle
		// requests for this version. Default: 20
		max_total_instances?: number
		cpu_utilization?: matchN(1, [_#defs."/$defs/automatic_scaling/$defs/cpu_utilization", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/automatic_scaling/$defs/cpu_utilization"]])
		disk_utilization?: matchN(1, [_#defs."/$defs/automatic_scaling/$defs/disk_utilization", list.MaxItems(1) & [..._#defs."/$defs/automatic_scaling/$defs/disk_utilization"]])
		network_utilization?: matchN(1, [_#defs."/$defs/automatic_scaling/$defs/network_utilization", list.MaxItems(1) & [..._#defs."/$defs/automatic_scaling/$defs/network_utilization"]])
		request_utilization?: matchN(1, [_#defs."/$defs/automatic_scaling/$defs/request_utilization", list.MaxItems(1) & [..._#defs."/$defs/automatic_scaling/$defs/request_utilization"]])

		// Minimum number of idle instances that should be maintained for
		// this version. Only applicable for the default version of a
		// service.
		min_idle_instances?: number

		// Minimum amount of time a request should wait in the pending
		// queue before starting a new instance to handle it.
		min_pending_latency?: string

		// Minimum number of running instances that should be maintained
		// for this version. Default: 2
		min_total_instances?: number
	})

	#deployment: close({
		cloud_build_options?: matchN(1, [_#defs."/$defs/deployment/$defs/cloud_build_options", list.MaxItems(1) & [..._#defs."/$defs/deployment/$defs/cloud_build_options"]])
		container?: matchN(1, [_#defs."/$defs/deployment/$defs/container", list.MaxItems(1) & [..._#defs."/$defs/deployment/$defs/container"]])
		files?: matchN(1, [_#defs."/$defs/deployment/$defs/files", [..._#defs."/$defs/deployment/$defs/files"]])
		zip?: matchN(1, [_#defs."/$defs/deployment/$defs/zip", list.MaxItems(1) & [..._#defs."/$defs/deployment/$defs/zip"]])
	})

	#endpoints_api_service: close({
		// Endpoints service configuration ID as specified by the Service
		// Management API. For example "2016-09-19r1".
		//
		// By default, the rollout strategy for Endpoints is "FIXED". This
		// means that Endpoints starts up with a particular configuration
		// ID.
		// When a new configuration is rolled out, Endpoints must be given
		// the new configuration ID. The configId field is used to give
		// the configuration ID
		// and is required in this case.
		//
		// Endpoints also has a rollout strategy called "MANAGED". When
		// using this, Endpoints fetches the latest configuration and
		// does not need
		// the configuration ID. In this case, configId must be omitted.
		config_id?: string

		// Enable or disable trace sampling. By default, this is set to
		// false for enabled.
		disable_trace_sampling?: bool

		// Endpoints service name which is the name of the "service"
		// resource in the Service Management API.
		// For example "myapi.endpoints.myproject.cloud.goog"
		name!: string

		// Endpoints rollout strategy. If FIXED, configId must be
		// specified. If MANAGED, configId must be omitted. Default
		// value: "FIXED" Possible values: ["FIXED", "MANAGED"]
		rollout_strategy?: string
	})

	#entrypoint: close({
		// The format should be a shell command that can be fed to bash
		// -c.
		shell!: string
	})

	#flexible_runtime_settings: close({
		// Operating System of the application runtime.
		operating_system?: string

		// The runtime version of an App Engine flexible application.
		runtime_version?: string
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

	#liveness_check: close({
		// Interval between health checks.
		check_interval?: string

		// Number of consecutive failed checks required before considering
		// the VM unhealthy. Default: 4.
		failure_threshold?: number

		// Host header to send when performing a HTTP Readiness check.
		// Example: "myapp.appspot.com"
		host?: string

		// The initial delay before starting to execute the checks.
		// Default: "300s"
		initial_delay?: string

		// The request path.
		path!: string

		// Number of consecutive successful checks required before
		// considering the VM healthy. Default: 2.
		success_threshold?: number

		// Time before the check is considered failed. Default: "4s"
		timeout?: string
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

	#network: close({
		// List of ports, or port pairs, to forward from the virtual
		// machine to the application container.
		forwarded_ports?: [...string]

		// Tag to apply to the instance during creation.
		instance_tag?: string

		// Google Compute Engine network where the virtual machines are
		// created. Specify the short name, not the resource path.
		name!: string

		// Enable session affinity.
		session_affinity?: bool

		// Google Cloud Platform sub-network where the virtual machines
		// are created. Specify the short name, not the resource path.
		//
		// If the network that the instance is being created in is a
		// Legacy network, then the IP address is allocated from the
		// IPv4Range.
		// If the network that the instance is being created in is an auto
		// Subnet Mode Network, then only network name should be
		// specified (not the subnetworkName) and the IP address is
		// created from the IPCidrRange of the subnetwork that exists in
		// that zone for that network.
		// If the network that the instance is being created in is a
		// custom Subnet Mode Network, then the subnetworkName must be
		// specified and the IP address is created from the IPCidrRange
		// of the subnetwork.
		// If specified, the subnetwork must exist in the same region as
		// the App Engine flexible environment application.
		subnetwork?: string
	})

	#readiness_check: close({
		// A maximum time limit on application initialization, measured
		// from moment the application successfully
		// replies to a healthcheck until it is ready to serve traffic.
		// Default: "300s"
		app_start_timeout?: string

		// Interval between health checks. Default: "5s".
		check_interval?: string

		// Number of consecutive failed checks required before removing
		// traffic. Default: 2.
		failure_threshold?: number

		// Host header to send when performing a HTTP Readiness check.
		// Example: "myapp.appspot.com"
		host?: string

		// The request path.
		path!: string

		// Number of consecutive successful checks required before
		// receiving traffic. Default: 2.
		success_threshold?: number

		// Time before the check is considered failed. Default: "4s"
		timeout?: string
	})

	#resources: close({
		// Number of CPU cores needed.
		cpu?: number
		volumes?: matchN(1, [_#defs."/$defs/resources/$defs/volumes", [..._#defs."/$defs/resources/$defs/volumes"]])

		// Disk size (GB) needed.
		disk_gb?: number

		// Memory (GB) needed.
		memory_gb?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_access_connector: close({
		// Full Serverless VPC Access Connector name e.g.
		// /projects/my-project/locations/us-central1/connectors/c1.
		name!: string
	})

	_#defs: "/$defs/automatic_scaling/$defs/cpu_utilization": close({
		// Period of time over which CPU utilization is calculated.
		aggregation_window_length?: string

		// Target CPU utilization ratio to maintain when scaling. Must be
		// between 0 and 1.
		target_utilization!: number
	})

	_#defs: "/$defs/automatic_scaling/$defs/disk_utilization": close({
		// Target bytes read per second.
		target_read_bytes_per_second?: number

		// Target ops read per seconds.
		target_read_ops_per_second?: number

		// Target bytes written per second.
		target_write_bytes_per_second?: number

		// Target ops written per second.
		target_write_ops_per_second?: number
	})

	_#defs: "/$defs/automatic_scaling/$defs/network_utilization": close({
		// Target bytes received per second.
		target_received_bytes_per_second?: number

		// Target packets received per second.
		target_received_packets_per_second?: number

		// Target bytes sent per second.
		target_sent_bytes_per_second?: number

		// Target packets sent per second.
		target_sent_packets_per_second?: number
	})

	_#defs: "/$defs/automatic_scaling/$defs/request_utilization": close({
		// Target number of concurrent requests.
		target_concurrent_requests?: number

		// Target requests per second.
		target_request_count_per_second?: string
	})

	_#defs: "/$defs/deployment/$defs/cloud_build_options": close({
		// Path to the yaml file used in deployment, used to determine
		// runtime configuration details.
		app_yaml_path!: string

		// The Cloud Build timeout used as part of any dependent builds
		// performed by version creation. Defaults to 10 minutes.
		//
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		cloud_build_timeout?: string
	})

	_#defs: "/$defs/deployment/$defs/container": close({
		// URI to the hosted container image in Google Container Registry.
		// The URI must be fully qualified and include a tag or digest.
		// Examples: "gcr.io/my-project/image:tag" or
		// "gcr.io/my-project/image@digest"
		image!: string
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
		// files declared in static file handlers are
		// uploaded as static data and are only served to end users; they
		// cannot be read by the application. If enabled,
		// uploads are charged against both your code and static data
		// storage resource quotas.
		application_readable?: bool

		// Time a static file served by this handler should be cached by
		// web proxies and browsers.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example "3.5s".
		// Default is '0s'
		expiration?: string

		// HTTP headers to use for all responses from these URLs.
		// An object containing a list of "key:value" value pairs.".
		http_headers?: [string]: string

		// MIME type used to serve all files served by this handler.
		// Defaults to file-specific MIME types, which are derived from
		// each file's filename extension.
		mime_type?: string

		// Path to the static files matched by the URL pattern, from the
		// application root directory.
		// The path can refer to text matched in groupings in the URL
		// pattern.
		path?: string

		// Whether this handler should match the request if the file
		// referenced by the handler does not exist.
		require_matching_file?: bool

		// Regular expression that matches the file paths for all files
		// that should be referenced by this handler.
		upload_path_regex?: string
	})

	_#defs: "/$defs/resources/$defs/volumes": close({
		// Unique name for the volume.
		name!: string

		// Volume size in gigabytes.
		size_gb!: number

		// Underlying volume type, e.g. 'tmpfs'.
		volume_type!: string
	})
}
