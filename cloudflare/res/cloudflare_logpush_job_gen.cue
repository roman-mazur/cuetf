package res

#cloudflare_logpush_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_logpush_job")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// Name of the dataset. A list of supported datasets can be found
		// on the [Developer
		// Docs](https://developers.cloudflare.com/logs/reference/log-fields/).
		// Available values: "access_requests", "audit_logs",
		// "audit_logs_v2", "biso_user_actions", "casb_findings",
		// "device_posture_results", "dex_application_tests",
		// "dex_device_state_events", "dlp_forensic_copies",
		// "dns_firewall_logs", "dns_logs", "email_security_alerts",
		// "firewall_events", "gateway_dns", "gateway_http",
		// "gateway_network", "http_requests", "ipsec_logs",
		// "magic_ids_detections", "nel_reports",
		// "network_analytics_logs", "page_shield_events",
		// "sinkhole_http_logs", "spectrum_events", "ssh_logs",
		// "warp_config_changes", "warp_toggle_changes",
		// "workers_trace_events", "zaraz_events",
		// "zero_trust_network_sessions".
		dataset?: string

		// Uniquely identifies a resource (such as an s3 bucket) where
		// data. will be pushed. Additional configuration parameters
		// supported by the destination may be included.
		destination_conf!: string

		// Flag that indicates if the job is enabled.
		enabled?: bool

		// If not null, the job is currently failing. Failures are
		// usually. repetitive (example: no permissions to write to
		// destination bucket). Only the last failure is recorded. On
		// successful execution of a job the error_message and last_error
		// are set to null.
		error_message?: string

		// The filters to select the events to include and/or remove from
		// your logs. For more information, refer to
		// [Filters](https://developers.cloudflare.com/logs/reference/filters/).
		filter?: string

		// Unique id of the job.
		id?: number

		// The kind parameter (optional) is used to differentiate between
		// Logpush and Edge Log Delivery jobs (when supported by the
		// dataset).
		// Available values: "", "edge".
		kind?: string

		// Records the last time for which logs have been successfully
		// pushed. If the last successful push was for logs range
		// 2018-07-23T10:00:00Z to 2018-07-23T10:01:00Z then the value of
		// this field will be 2018-07-23T10:01:00Z. If the job has never
		// run or has just been enabled and hasn't run yet then the field
		// will be empty.
		last_complete?: string

		// Records the last time the job failed. If not null, the job is
		// currently. failing. If null, the job has either never failed
		// or has run successfully at least once since last failure. See
		// also the error_message field.
		last_error?: string

		// The maximum uncompressed file size of a batch of logs. This
		// setting value must be between `5 MB` and `1 GB`, or `0` to
		// disable it. Note that you cannot set a minimum file size; this
		// means that log files may be much smaller than this batch size.
		max_upload_bytes?: number

		// The maximum interval in seconds for log batches. This setting
		// must be between 30 and 300 seconds (5 minutes), or `0` to
		// disable it. Note that you cannot specify a minimum interval
		// for log batches; this means that log files may be sent in
		// shorter intervals than this.
		max_upload_interval_seconds?: number

		// The maximum number of log lines per batch. This setting must be
		// between 1000 and 1,000,000 lines, or `0` to disable it. Note
		// that you cannot specify a minimum number of log lines per
		// batch; this means that log files may contain many fewer lines
		// than this.
		max_upload_records?: number

		// Optional human readable job name. Not unique. Cloudflare
		// suggests. that you set this to a meaningful string, like the
		// domain name, to make it easier to identify your job.
		name?: string

		// The structured replacement for `logpull_options`. When
		// including this field, the `logpull_option` field will be
		// ignored.
		output_options?: close({
			// String to be prepended before each batch.
			batch_prefix?: string

			// String to be appended after each batch.
			batch_suffix?: string

			// If set to true, will cause all occurrences of `${` in the
			// generated files to be replaced with `x{`.
			cve_2021_44228?: bool

			// String to join fields. This field be ignored when
			// `record_template` is set.
			field_delimiter?: string

			// List of field names to be included in the Logpush output. For
			// the moment, there is no option to add all fields at once, so
			// you must specify all the fields names you are interested in.
			field_names?: [...string]

			// Specifies the output type, such as `ndjson` or `csv`. This sets
			// default values for the rest of the settings, depending on the
			// chosen output type. Some formatting rules, like string
			// quoting, are different between output types.
			// Available values: "ndjson", "csv".
			output_type?: string

			// String to be inserted in-between the records as separator.
			record_delimiter?: string

			// String to be prepended before each record.
			record_prefix?: string

			// String to be appended after each record.
			record_suffix?: string

			// String to use as template for each record instead of the
			// default json key value mapping. All fields used in the
			// template must be present in `field_names` as well, otherwise
			// they will end up as null. Format as a Go `text/template`
			// without any standard functions, like conditionals, loops,
			// sub-templates, etc.
			record_template?: string

			// Floating number to specify sampling rate. Sampling is applied
			// on top of filtering, and regardless of the current
			// `sample_interval` of the data.
			sample_rate?: number

			// String to specify the format for timestamps, such as
			// `unixnano`, `unix`, or `rfc3339`.
			// Available values: "unixnano", "unix", "rfc3339".
			timestamp_format?: string
		})

		// Ownership challenge token to prove destination ownership.
		ownership_challenge?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
