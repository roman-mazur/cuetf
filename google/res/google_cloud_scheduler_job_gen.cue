package res

import "list"

#google_cloud_scheduler_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloud_scheduler_job")
	close({
		// The deadline for job attempts. If the request handler does not
		// respond by this deadline then the request is
		// cancelled and the attempt is marked as a DEADLINE_EXCEEDED
		// failure. The failed attempt can be viewed in
		// execution logs. Cloud Scheduler will retry the job according to
		// the RetryConfig.
		// The allowed duration for this deadline is:
		// * For HTTP targets, between 15 seconds and 30 minutes.
		// * For App Engine HTTP targets, between 15 seconds and 24 hours.
		// * **Note**: For PubSub targets, this field is ignored - setting
		// it will introduce an unresolvable diff.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s"
		attempt_deadline?: string

		// A human-readable description for the job.
		// This string must not contain more than 500 characters.
		description?: string

		// The name of the job.
		name!: string
		id?:   string

		// Sets the job to a paused state. Jobs default to being enabled
		// when this property is not set.
		paused?: bool

		// Region where the scheduler job resides. If it is not provided,
		// Terraform will use the provider default.
		region?:  string
		project?: string

		// Describes the schedule on which the job will be executed.
		schedule?: string
		app_engine_http_target?: matchN(1, [#app_engine_http_target, list.MaxItems(1) & [...#app_engine_http_target]])
		http_target?: matchN(1, [#http_target, list.MaxItems(1) & [...#http_target]])
		pubsub_target?: matchN(1, [#pubsub_target, list.MaxItems(1) & [...#pubsub_target]])
		retry_config?: matchN(1, [#retry_config, list.MaxItems(1) & [...#retry_config]])
		timeouts?: #timeouts

		// State of the job.
		state?: string

		// Specifies the time zone to be used in interpreting schedule.
		// The value of this field must be a time zone name from the tz
		// database.
		time_zone?: string
	})

	#app_engine_http_target: close({
		// HTTP request body.
		// A request body is allowed only if the HTTP method is POST or
		// PUT.
		// It will result in invalid argument error to set a body on a job
		// with an incompatible HttpMethod.
		//
		// A base64-encoded string.
		body?: string

		// HTTP request headers.
		// This map contains the header field names and values.
		// Headers can be set when the job is created.
		headers?: [string]: string

		// Which HTTP method to use for the request.
		http_method?: string
		app_engine_routing?: matchN(1, [_#defs."/$defs/app_engine_http_target/$defs/app_engine_routing", list.MaxItems(1) & [..._#defs."/$defs/app_engine_http_target/$defs/app_engine_routing"]])

		// The relative URI.
		// The relative URL must begin with "/" and must be a valid HTTP
		// relative URL.
		// It can contain a path, query string arguments, and \#
		// fragments.
		// If the relative URL is empty, then the root path "/" will be
		// used.
		// No spaces are allowed, and the maximum length allowed is 2083
		// characters
		relative_uri!: string
	})

	#http_target: close({
		// HTTP request body.
		// A request body is allowed only if the HTTP method is POST, PUT,
		// or PATCH.
		// It is an error to set body on a job with an incompatible
		// HttpMethod.
		//
		// A base64-encoded string.
		body?: string

		// This map contains the header field names and values.
		// Repeated headers are not supported, but a header value can
		// contain commas.
		headers?: [string]: string

		// Which HTTP method to use for the request.
		http_method?: string

		// The full URI path that the request will be sent to.
		uri!: string
		oauth_token?: matchN(1, [_#defs."/$defs/http_target/$defs/oauth_token", list.MaxItems(1) & [..._#defs."/$defs/http_target/$defs/oauth_token"]])
		oidc_token?: matchN(1, [_#defs."/$defs/http_target/$defs/oidc_token", list.MaxItems(1) & [..._#defs."/$defs/http_target/$defs/oidc_token"]])
	})

	#pubsub_target: close({
		// Attributes for PubsubMessage.
		// Pubsub message must contain either non-empty data, or at least
		// one attribute.
		attributes?: [string]: string

		// The message payload for PubsubMessage.
		// Pubsub message must contain either non-empty data, or at least
		// one attribute.
		//
		// A base64-encoded string.
		data?: string

		// The full resource name for the Cloud Pub/Sub topic to which
		// messages will be published when a job is delivered. ~>**NOTE:**
		// The topic name must be in the same format as required by
		// PubSub's
		// PublishRequest.name, e.g.
		// 'projects/my-project/topics/my-topic'.
		topic_name!: string
	})

	#retry_config: close({
		// The maximum amount of time to wait before retrying a job after
		// it fails.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'.
		max_backoff_duration?: string

		// The time between retries will double maxDoublings times.
		// A job's retry interval starts at minBackoffDuration,
		// then doubles maxDoublings times, then increases linearly,
		// and finally retries retries at intervals of maxBackoffDuration
		// up to retryCount times.
		max_doublings?: number

		// The time limit for retrying a failed job, measured from time
		// when an execution was first attempted.
		// If specified with retryCount, the job will be retried until
		// both limits are reached.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'.
		max_retry_duration?: string

		// The minimum amount of time to wait before retrying a job after
		// it fails.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'.
		min_backoff_duration?: string

		// The number of attempts that the system will make to run a
		// job using the exponential backoff procedure described by
		// maxDoublings.
		// Values greater than 5 and negative values are not allowed.
		retry_count?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/app_engine_http_target/$defs/app_engine_routing": close({
		// App instance.
		// By default, the job is sent to an instance which is available
		// when the job is attempted.
		instance?: string

		// App service.
		// By default, the job is sent to the service which is the default
		// service when the job is attempted.
		service?: string

		// App version.
		// By default, the job is sent to the version which is the default
		// version when the job is attempted.
		version?: string
	})

	_#defs: "/$defs/http_target/$defs/oauth_token": close({
		// OAuth scope to be used for generating OAuth access token. If
		// not specified,
		// "https://www.googleapis.com/auth/cloud-platform" will be used.
		scope?: string

		// Service account email to be used for generating OAuth token.
		// The service account must be within the same project as the job.
		service_account_email!: string
	})

	_#defs: "/$defs/http_target/$defs/oidc_token": close({
		// Audience to be used when generating OIDC token. If not
		// specified,
		// the URI specified in target will be used.
		audience?: string

		// Service account email to be used for generating OAuth token.
		// The service account must be within the same project as the job.
		service_account_email!: string
	})
}
