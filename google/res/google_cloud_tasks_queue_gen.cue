package res

import "list"

#google_cloud_tasks_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloud_tasks_queue")
	close({
		// The desired state of the queue. Use this to pause and resume
		// the queue.
		//
		// * RUNNING: The queue is running. Tasks can be dispatched.
		// * PAUSED: The queue is paused. Tasks are not dispatched but can
		// be added to the queue. Default value: "RUNNING" Possible
		// values: ["RUNNING", "PAUSED"]
		desired_state?: string

		// The location of the queue
		location!: string
		id?:       string
		app_engine_routing_override?: matchN(1, [#app_engine_routing_override, list.MaxItems(1) & [...#app_engine_routing_override]])

		// The queue name.
		name!: string
		http_target?: matchN(1, [#http_target, list.MaxItems(1) & [...#http_target]])
		project?: string
		rate_limits?: matchN(1, [#rate_limits, list.MaxItems(1) & [...#rate_limits]])
		retry_config?: matchN(1, [#retry_config, list.MaxItems(1) & [...#retry_config]])
		stackdriver_logging_config?: matchN(1, [#stackdriver_logging_config, list.MaxItems(1) & [...#stackdriver_logging_config]])

		// The current state of the queue.
		state?:    string
		timeouts?: #timeouts
	})

	#app_engine_routing_override: close({
		// The host that the task is sent to.
		host?: string

		// App instance.
		//
		// By default, the task is sent to an instance which is available
		// when the task is attempted.
		instance?: string

		// App service.
		//
		// By default, the task is sent to the service which is the
		// default service when the task is attempted.
		service?: string

		// App version.
		//
		// By default, the task is sent to the version which is the
		// default version when the task is attempted.
		version?: string
	})

	#http_target: close({
		header_overrides?: matchN(1, [_#defs."/$defs/http_target/$defs/header_overrides", [..._#defs."/$defs/http_target/$defs/header_overrides"]])
		oauth_token?: matchN(1, [_#defs."/$defs/http_target/$defs/oauth_token", list.MaxItems(1) & [..._#defs."/$defs/http_target/$defs/oauth_token"]])
		oidc_token?: matchN(1, [_#defs."/$defs/http_target/$defs/oidc_token", list.MaxItems(1) & [..._#defs."/$defs/http_target/$defs/oidc_token"]])
		uri_override?: matchN(1, [_#defs."/$defs/http_target/$defs/uri_override", list.MaxItems(1) & [..._#defs."/$defs/http_target/$defs/uri_override"]])

		// The HTTP method to use for the request.
		//
		// When specified, it overrides HttpRequest for the task.
		// Note that if the value is set to GET the body of the task will
		// be ignored at execution time. Possible values:
		// ["HTTP_METHOD_UNSPECIFIED", "POST", "GET", "HEAD", "PUT",
		// "DELETE", "PATCH", "OPTIONS"]
		http_method?: string
	})

	#rate_limits: close({
		// The max burst size.
		//
		// Max burst size limits how fast tasks in queue are processed
		// when many tasks are
		// in the queue and the rate is high. This field allows the queue
		// to have a high
		// rate so processing starts shortly after a task is enqueued, but
		// still limits
		// resource usage when many tasks are enqueued in a short period
		// of time.
		max_burst_size?: number

		// The maximum number of concurrent tasks that Cloud Tasks allows
		// to
		// be dispatched for this queue. After this threshold has been
		// reached, Cloud Tasks stops dispatching tasks until the number
		// of
		// concurrent requests decreases.
		max_concurrent_dispatches?: number

		// The maximum rate at which tasks are dispatched from this queue.
		//
		// If unspecified when the queue is created, Cloud Tasks will pick
		// the default.
		max_dispatches_per_second?: number
	})

	#retry_config: close({
		// Number of attempts per task.
		//
		// Cloud Tasks will attempt the task maxAttempts times (that is,
		// if
		// the first attempt fails, then there will be maxAttempts - 1
		// retries). Must be >= -1.
		//
		// If unspecified when the queue is created, Cloud Tasks will pick
		// the default.
		//
		// -1 indicates unlimited attempts.
		max_attempts?: number

		// A task will be scheduled for retry between minBackoff and
		// maxBackoff duration after it fails, if the queue's RetryConfig
		// specifies that the task should be retried.
		max_backoff?: string

		// The time between retries will double maxDoublings times.
		//
		// A task's retry interval starts at minBackoff, then doubles
		// maxDoublings times,
		// then increases linearly, and finally retries retries at
		// intervals of maxBackoff
		// up to maxAttempts times.
		max_doublings?: number

		// If positive, maxRetryDuration specifies the time limit for
		// retrying a failed task, measured from when the task was first
		// attempted. Once maxRetryDuration time has passed and the task
		// has
		// been attempted maxAttempts times, no further attempts will be
		// made and the task will be deleted.
		//
		// If zero, then the task age is unlimited.
		max_retry_duration?: string

		// A task will be scheduled for retry between minBackoff and
		// maxBackoff duration after it fails, if the queue's RetryConfig
		// specifies that the task should be retried.
		min_backoff?: string
	})

	#stackdriver_logging_config: close({
		// Specifies the fraction of operations to write to Stackdriver
		// Logging.
		// This field may contain any value between 0.0 and 1.0,
		// inclusive. 0.0 is the
		// default and means that no operations are logged.
		sampling_ratio!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/http_target/$defs/header_overrides": close({
		header!: matchN(1, [_#defs."/$defs/http_target/$defs/header_overrides/$defs/header", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/http_target/$defs/header_overrides/$defs/header"]])
	})

	_#defs: "/$defs/http_target/$defs/header_overrides/$defs/header": close({
		// The Key of the header.
		key!: string

		// The Value of the header.
		value!: string
	})

	_#defs: "/$defs/http_target/$defs/oauth_token": close({
		// OAuth scope to be used for generating OAuth access token.
		// If not specified,
		// "https://www.googleapis.com/auth/cloud-platform" will be used.
		scope?: string

		// Service account email to be used for generating OAuth token.
		// The service account must be within the same project as the
		// queue.
		// The caller must have iam.serviceAccounts.actAs permission for
		// the service account.
		service_account_email!: string
	})

	_#defs: "/$defs/http_target/$defs/oidc_token": close({
		// Audience to be used when generating OIDC token. If not
		// specified, the URI specified in target will be used.
		audience?: string

		// Service account email to be used for generating OIDC token.
		// The service account must be within the same project as the
		// queue.
		// The caller must have iam.serviceAccounts.actAs permission for
		// the service account.
		service_account_email!: string
	})

	_#defs: "/$defs/http_target/$defs/uri_override": close({
		// Host override.
		//
		// When specified, replaces the host part of the task URL.
		// For example, if the task URL is "https://www.google.com", and
		// host value
		// is set to "example.net", the overridden URI will be changed to
		// "https://example.net".
		// Host value cannot be an empty string (INVALID_ARGUMENT).
		host?: string

		// Port override.
		//
		// When specified, replaces the port part of the task URI.
		// For instance, for a URI http://www.google.com/foo and port=123,
		// the overridden URI becomes http://www.google.com:123/foo.
		// Note that the port value must be a positive integer.
		// Setting the port to 0 (Zero) clears the URI port.
		port?: string

		// Scheme override.
		//
		// When specified, the task URI scheme is replaced by the provided
		// value (HTTP or HTTPS). Possible values: ["HTTP", "HTTPS"]
		scheme?: string

		// URI Override Enforce Mode
		//
		// When specified, determines the Target UriOverride mode. If not
		// specified, it defaults to ALWAYS. Possible values: ["ALWAYS",
		// "IF_NOT_EXISTS"]
		uri_override_enforce_mode?: string
		path_override?: matchN(1, [_#defs."/$defs/http_target/$defs/uri_override/$defs/path_override", list.MaxItems(1) & [..._#defs."/$defs/http_target/$defs/uri_override/$defs/path_override"]])
		query_override?: matchN(1, [_#defs."/$defs/http_target/$defs/uri_override/$defs/query_override", list.MaxItems(1) & [..._#defs."/$defs/http_target/$defs/uri_override/$defs/query_override"]])
	})

	_#defs: "/$defs/http_target/$defs/uri_override/$defs/path_override": close({
		// The URI path (e.g., /users/1234). Default is an empty string.
		path?: string
	})

	_#defs: "/$defs/http_target/$defs/uri_override/$defs/query_override": close({
		// The query parameters (e.g., qparam1=123&qparam2=456). Default
		// is an empty string.
		query_params?: string
	})
}
