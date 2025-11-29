package res

import "list"

#google_clouddeploy_deploy_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_clouddeploy_deploy_policy")
	close({
		// User annotations. These attributes can only be set and used by
		// the user, and not by Cloud Deploy. Annotations must meet the
		// following constraints: * Annotations are key/value pairs. *
		// Valid annotation keys have two segments: an optional prefix
		// and name, separated by a slash ('/'). * The name segment is
		// required and must be 63 characters or less, beginning and
		// ending with an alphanumeric character ('[a-z0-9A-Z]') with
		// dashes ('-'), underscores ('_'), dots ('.'), and alphanumerics
		// between. * The prefix is optional. If specified, the prefix
		// must be a DNS subdomain: a series of DNS labels separated by
		// dots('.'), not longer than 253 characters in total, followed
		// by a slash ('/'). See
		// https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set
		// for more details.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. Time at which the DeployPolicy was created.
		create_time?: string

		// Description of the 'DeployPolicy'. Max length is 255
		// characters.
		description?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The weak etag of the 'DeployPolicy' resource. This checksum is
		// computed by the server based on the value of other fields, and
		// may be sent on update and delete requests to ensure the client
		// has an up-to-date value before proceeding.
		etag?: string
		id?:   string

		// Labels are attributes that can be set and used by both the user
		// and by Cloud Deploy. Labels must meet the following
		// constraints: * Keys and values can contain only lowercase
		// letters, numeric characters, underscores, and dashes. * All
		// characters must use UTF-8 encoding, and international
		// characters are allowed. * Keys must start with a lowercase
		// letter or international character. * Each resource is limited
		// to a maximum of 64 labels. Both keys and values are
		// additionally constrained to be <= 63 characters.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the resource
		location!: string

		// Name of the 'DeployPolicy'.
		name!: string
		rules!: matchN(1, [#rules, [_, ...] & [...#rules]])
		selectors!: matchN(1, [#selectors, [_, ...] & [...#selectors]])
		timeouts?: #timeouts

		// When suspended, the policy will not prevent actions from
		// occurring, even if the action violates the policy.
		suspended?: bool
		project?:   string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. Unique identifier of the 'DeployPolicy'.
		uid?: string

		// Output only. Time at which the DeployPolicy was updated.
		update_time?: string
	})

	#rules: close({
		rollout_restriction?: matchN(1, [_#defs."/$defs/rules/$defs/rollout_restriction", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/rollout_restriction"]])
	})

	#selectors: close({
		delivery_pipeline?: matchN(1, [_#defs."/$defs/selectors/$defs/delivery_pipeline", list.MaxItems(1) & [..._#defs."/$defs/selectors/$defs/delivery_pipeline"]])
		target?: matchN(1, [_#defs."/$defs/selectors/$defs/target", list.MaxItems(1) & [..._#defs."/$defs/selectors/$defs/target"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rules/$defs/rollout_restriction": close({
		// Rollout actions to be restricted as part of the policy. If left
		// empty, all actions will be restricted. Possible values:
		// ["ADVANCE", "APPROVE", "CANCEL", "CREATE", "IGNORE_JOB",
		// "RETRY_JOB", "ROLLBACK", "TERMINATE_JOBRUN"]
		actions?: [...string]
		time_windows?: matchN(1, [_#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows"]])

		// ID of the rule. This id must be unique in the 'DeployPolicy'
		// resource to which this rule belongs. The format is
		// 'a-z{0,62}'.
		id!: string

		// What invoked the action. If left empty, all invoker types will
		// be restricted. Possible values: ["USER", "DEPLOY_AUTOMATION"]
		invokers?: [...string]
	})

	_#defs: "/$defs/rules/$defs/rollout_restriction/$defs/time_windows": close({
		one_time_windows?: matchN(1, [_#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows", [..._#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows"]])
		weekly_windows?: matchN(1, [_#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/weekly_windows", [..._#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/weekly_windows"]])

		// The time zone in IANA format IANA Time Zone Database (e.g.
		// America/New_York).
		time_zone!: string
	})

	_#defs: "/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows": close({
		end_date!: matchN(1, [_#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows/$defs/end_date", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows/$defs/end_date"]])
		end_time!: matchN(1, [_#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows/$defs/end_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows/$defs/end_time"]])
		start_date!: matchN(1, [_#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows/$defs/start_date", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows/$defs/start_date"]])
		start_time!: matchN(1, [_#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows/$defs/start_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows/$defs/start_time"]])
	})

	_#defs: "/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows/$defs/end_date": close({
		// Day of a month. Must be from 1 to 31 and valid for the year and
		// month.
		day?: number

		// Month of a year. Must be from 1 to 12.
		month?: number

		// Year of the date. Must be from 1 to 9999.
		year?: number
	})

	_#defs: "/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows/$defs/end_time": close({
		// Hours of a day in 24 hour format. Must be greater than or equal
		// to 0 and typically must be less than or equal to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of an hour. Must be greater than or equal to 0 and less
		// than or equal to 59.
		minutes?: number

		// Fractions of seconds, in nanoseconds. Must be greater than or
		// equal to 0 and less than or equal to 999,999,999.
		nanos?: number

		// Seconds of a minute. Must be greater than or equal to 0 and
		// typically must be less than or equal to 59. An API may allow
		// the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows/$defs/start_date": close({
		// Day of a month. Must be from 1 to 31 and valid for the year and
		// month, or 0 to specify a year by itself or a year and month
		// where the day isn't significant.
		day?: number

		// Month of a year. Must be from 1 to 12, or 0 to specify a year
		// without a month and day.
		month?: number

		// Year of the date. Must be from 1 to 9999, or 0 to specify a
		// date without a year.
		year?: number
	})

	_#defs: "/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/one_time_windows/$defs/start_time": close({
		// Hours of a day in 24 hour format. Must be greater than or equal
		// to 0 and typically must be less than or equal to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of an hour. Must be greater than or equal to 0 and less
		// than or equal to 59.
		minutes?: number

		// Fractions of seconds, in nanoseconds. Must be greater than or
		// equal to 0 and less than or equal to 999,999,999.
		nanos?: number

		// Seconds of a minute. Must be greater than or equal to 0 and
		// typically must be less than or equal to 59. An API may allow
		// the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/weekly_windows": close({
		end_time?: matchN(1, [_#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/weekly_windows/$defs/end_time", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/weekly_windows/$defs/end_time"]])
		start_time?: matchN(1, [_#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/weekly_windows/$defs/start_time", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/weekly_windows/$defs/start_time"]])

		// Days of week. If left empty, all days of the week will be
		// included. Possible values: ["MONDAY", "TUESDAY", "WEDNESDAY",
		// "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
		days_of_week?: [...string]
	})

	_#defs: "/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/weekly_windows/$defs/end_time": close({
		// Hours of a day in 24 hour format. Must be greater than or equal
		// to 0 and typically must be less than or equal to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of an hour. Must be greater than or equal to 0 and less
		// than or equal to 59.
		minutes?: number

		// Fractions of seconds, in nanoseconds. Must be greater than or
		// equal to 0 and less than or equal to 999,999,999.
		nanos?: number

		// Seconds of a minute. Must be greater than or equal to 0 and
		// typically must be less than or equal to 59. An API may allow
		// the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/rules/$defs/rollout_restriction/$defs/time_windows/$defs/weekly_windows/$defs/start_time": close({
		// Hours of a day in 24 hour format. Must be greater than or equal
		// to 0 and typically must be less than or equal to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of an hour. Must be greater than or equal to 0 and less
		// than or equal to 59.
		minutes?: number

		// Fractions of seconds, in nanoseconds. Must be greater than or
		// equal to 0 and less than or equal to 999,999,999.
		nanos?: number

		// Seconds of a minute. Must be greater than or equal to 0 and
		// typically must be less than or equal to 59. An API may allow
		// the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/selectors/$defs/delivery_pipeline": close({
		// ID of the DeliveryPipeline. The value of this field could be
		// one of the following:
		// - The last segment of a pipeline name
		// - "*", all delivery pipelines in a location
		id?: string

		// DeliveryPipeline labels.
		labels?: [string]: string
	})

	_#defs: "/$defs/selectors/$defs/target": close({
		// ID of the 'Target'. The value of this field could be one of the
		// following: * The last segment of a target name. It only needs
		// the ID to determine which target is being referred to * "*",
		// all targets in a location.
		id?: string

		// Target labels.
		labels?: [string]: string
	})
}
