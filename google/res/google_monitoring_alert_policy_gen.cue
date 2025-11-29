package res

import "list"

#google_monitoring_alert_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_monitoring_alert_policy")
	close({
		// How to combine the results of multiple conditions to
		// determine if an incident should be opened. Possible values:
		// ["AND", "OR", "AND_WITH_MATCHING_RESOURCE"]
		combiner!: string

		// A read-only record of the creation of the alerting policy.
		// If provided in a call to create or update, this field will
		// be ignored.
		creation_record?: [...close({
			mutate_time?: string
			mutated_by?:  string
		})]

		// A short name or phrase used to identify the policy in
		// dashboards, notifications, and incidents. To avoid confusion,
		// don't use
		// the same display name for multiple policies in the same
		// project. The
		// name is limited to 512 Unicode characters.
		display_name!: string

		// Whether or not the policy is enabled. The default is true.
		enabled?: bool
		id?:      string

		// The unique resource name for this policy.
		// Its syntax is:
		// projects/[PROJECT_ID]/alertPolicies/[ALERT_POLICY_ID]
		name?: string
		alert_strategy?: matchN(1, [#alert_strategy, list.MaxItems(1) & [...#alert_strategy]])

		// Identifies the notification channels to which notifications
		// should be
		// sent when incidents are opened or closed or when new violations
		// occur
		// on an already opened incident. Each element of this array
		// corresponds
		// to the name field in each of the NotificationChannel objects
		// that are
		// returned from the notificationChannels.list method. The syntax
		// of the
		// entries in this field is
		// 'projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]'
		notification_channels?: [...string]
		conditions!: matchN(1, [#conditions, [_, ...] & [...#conditions]])
		documentation?: matchN(1, [#documentation, list.MaxItems(1) & [...#documentation]])
		timeouts?: #timeouts
		project?:  string

		// The severity of an alert policy indicates how important
		// incidents generated
		// by that policy are. The severity level will be displayed on the
		// Incident
		// detail page and in notifications. Possible values: ["CRITICAL",
		// "ERROR", "WARNING"]
		severity?: string

		// This field is intended to be used for organizing and
		// identifying the AlertPolicy
		// objects.The field can contain up to 64 entries. Each key and
		// value is limited
		// to 63 Unicode characters or 128 bytes, whichever is smaller.
		// Labels and values
		// can contain only lowercase letters, numerals, underscores, and
		// dashes. Keys
		// must begin with a letter.
		user_labels?: [string]: string
	})

	#alert_strategy: close({
		notification_channel_strategy?: matchN(1, [_#defs."/$defs/alert_strategy/$defs/notification_channel_strategy", [..._#defs."/$defs/alert_strategy/$defs/notification_channel_strategy"]])
		notification_rate_limit?: matchN(1, [_#defs."/$defs/alert_strategy/$defs/notification_rate_limit", list.MaxItems(1) & [..._#defs."/$defs/alert_strategy/$defs/notification_rate_limit"]])

		// If an alert policy that was active has no data for this long,
		// any open incidents will close.
		auto_close?: string

		// Control when notifications will be sent out. Possible values:
		// ["NOTIFICATION_PROMPT_UNSPECIFIED", "OPENED", "CLOSED"]
		notification_prompts?: [...string]
	})

	#conditions: close({
		condition_absent?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_absent", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_absent"]])
		condition_matched_log?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_matched_log", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_matched_log"]])

		// A short name or phrase used to identify the
		// condition in dashboards, notifications, and
		// incidents. To avoid confusion, don't use the same
		// display name for multiple conditions in the same
		// policy.
		display_name!: string

		// The unique resource name for this condition.
		// Its syntax is:
		// projects/[PROJECT_ID]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID]
		// [CONDITION_ID] is assigned by Stackdriver Monitoring when
		// the condition is created as part of a new or updated alerting
		// policy.
		name?: string
		condition_monitoring_query_language?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_monitoring_query_language", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_monitoring_query_language"]])
		condition_prometheus_query_language?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_prometheus_query_language", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_prometheus_query_language"]])
		condition_sql?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_sql", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_sql"]])
		condition_threshold?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_threshold", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_threshold"]])
	})

	#documentation: close({
		// The text of the documentation, interpreted according to
		// mimeType.
		// The content may not exceed 8,192 Unicode characters and may not
		// exceed more than 10,240 bytes when encoded in UTF-8 format,
		// whichever is smaller.
		content?: string
		links?: matchN(1, [_#defs."/$defs/documentation/$defs/links", [..._#defs."/$defs/documentation/$defs/links"]])

		// The format of the content field. Presently, only the value
		// "text/markdown" is supported.
		mime_type?: string

		// The subject line of the notification. The subject line may not
		// exceed 10,240 bytes. In notifications generated by this policy
		// the contents
		// of the subject line after variable expansion will be truncated
		// to 255 bytes
		// or shorter at the latest UTF-8 character boundary.
		subject?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/alert_strategy/$defs/notification_channel_strategy": close({
		// The notification channels that these settings apply to. Each of
		// these
		// correspond to the name field in one of the NotificationChannel
		// objects
		// referenced in the notification_channels field of this
		// AlertPolicy. The format is
		// 'projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]'
		notification_channel_names?: [...string]

		// The frequency at which to send reminder notifications for open
		// incidents.
		renotify_interval?: string
	})

	_#defs: "/$defs/alert_strategy/$defs/notification_rate_limit": close({
		// Not more than one notification per period.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example "60.5s".
		period?: string
	})

	_#defs: "/$defs/conditions/$defs/condition_absent": close({
		aggregations?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_absent/$defs/aggregations", [..._#defs."/$defs/conditions/$defs/condition_absent/$defs/aggregations"]])
		trigger?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_absent/$defs/trigger", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_absent/$defs/trigger"]])

		// The amount of time that a time series must
		// fail to report new data to be considered
		// failing. Currently, only values that are a
		// multiple of a minute--e.g. 60s, 120s, or 300s
		// --are supported.
		duration!: string

		// A filter that identifies which time series
		// should be compared with the threshold.The
		// filter is similar to the one that is
		// specified in the
		// MetricService.ListTimeSeries request (that
		// call is useful to verify the time series
		// that will be retrieved / processed) and must
		// specify the metric type and optionally may
		// contain restrictions on resource type,
		// resource labels, and metric labels. This
		// field may not exceed 2048 Unicode characters
		// in length.
		filter?: string
	})

	_#defs: "/$defs/conditions/$defs/condition_absent/$defs/aggregations": close({
		// The alignment period for per-time
		// series alignment. If present,
		// alignmentPeriod must be at least
		// 60 seconds. After per-time series
		// alignment, each time series will
		// contain data points only on the
		// period boundaries. If
		// perSeriesAligner is not specified
		// or equals ALIGN_NONE, then this
		// field is ignored. If
		// perSeriesAligner is specified and
		// does not equal ALIGN_NONE, then
		// this field must be defined;
		// otherwise an error is returned.
		alignment_period?: string

		// The approach to be used to combine
		// time series. Not all reducer
		// functions may be applied to all
		// time series, depending on the
		// metric type and the value type of
		// the original time series.
		// Reduction may change the metric
		// type of value type of the time
		// series.Time series data must be
		// aligned in order to perform cross-
		// time series reduction. If
		// crossSeriesReducer is specified,
		// then perSeriesAligner must be
		// specified and not equal ALIGN_NONE
		// and alignmentPeriod must be
		// specified; otherwise, an error is
		// returned. Possible values: ["REDUCE_NONE", "REDUCE_MEAN",
		// "REDUCE_MIN", "REDUCE_MAX", "REDUCE_SUM", "REDUCE_STDDEV",
		// "REDUCE_COUNT", "REDUCE_COUNT_TRUE", "REDUCE_COUNT_FALSE",
		// "REDUCE_FRACTION_TRUE", "REDUCE_PERCENTILE_99",
		// "REDUCE_PERCENTILE_95", "REDUCE_PERCENTILE_50",
		// "REDUCE_PERCENTILE_05"]
		cross_series_reducer?: string

		// The set of fields to preserve when
		// crossSeriesReducer is specified.
		// The groupByFields determine how
		// the time series are partitioned
		// into subsets prior to applying the
		// aggregation function. Each subset
		// contains time series that have the
		// same value for each of the
		// grouping fields. Each individual
		// time series is a member of exactly
		// one subset. The crossSeriesReducer
		// is applied to each subset of time
		// series. It is not possible to
		// reduce across different resource
		// types, so this field implicitly
		// contains resource.type. Fields not
		// specified in groupByFields are
		// aggregated away. If groupByFields
		// is not specified and all the time
		// series have the same resource
		// type, then the time series are
		// aggregated into a single output
		// time series. If crossSeriesReducer
		// is not defined, this field is
		// ignored.
		group_by_fields?: [...string]

		// The approach to be used to align
		// individual time series. Not all
		// alignment functions may be applied
		// to all time series, depending on
		// the metric type and value type of
		// the original time series.
		// Alignment may change the metric
		// type or the value type of the time
		// series.Time series data must be
		// aligned in order to perform cross-
		// time series reduction. If
		// crossSeriesReducer is specified,
		// then perSeriesAligner must be
		// specified and not equal ALIGN_NONE
		// and alignmentPeriod must be
		// specified; otherwise, an error is
		// returned. Possible values: ["ALIGN_NONE", "ALIGN_DELTA",
		// "ALIGN_RATE", "ALIGN_INTERPOLATE", "ALIGN_NEXT_OLDER",
		// "ALIGN_MIN", "ALIGN_MAX", "ALIGN_MEAN", "ALIGN_COUNT",
		// "ALIGN_SUM", "ALIGN_STDDEV", "ALIGN_COUNT_TRUE",
		// "ALIGN_COUNT_FALSE", "ALIGN_FRACTION_TRUE",
		// "ALIGN_PERCENTILE_99", "ALIGN_PERCENTILE_95",
		// "ALIGN_PERCENTILE_50", "ALIGN_PERCENTILE_05",
		// "ALIGN_PERCENT_CHANGE"]
		per_series_aligner?: string
	})

	_#defs: "/$defs/conditions/$defs/condition_absent/$defs/trigger": close({
		// The absolute number of time series
		// that must fail the predicate for the
		// condition to be triggered.
		count?: number

		// The percentage of time series that
		// must fail the predicate for the
		// condition to be triggered.
		percent?: number
	})

	_#defs: "/$defs/conditions/$defs/condition_matched_log": close({
		// A logs-based filter.
		filter!: string

		// A map from a label key to an extractor expression, which is
		// used to
		// extract the value for this label key. Each entry in this map is
		// a specification for how data should be extracted from log
		// entries that
		// match filter. Each combination of extracted values is treated
		// as
		// a separate rule for the purposes of triggering notifications.
		// Label keys and corresponding values can be used in
		// notifications
		// generated by this condition.
		label_extractors?: [string]: string
	})

	_#defs: "/$defs/conditions/$defs/condition_monitoring_query_language": close({
		// The amount of time that a time series must
		// violate the threshold to be considered
		// failing. Currently, only values that are a
		// multiple of a minute--e.g., 0, 60, 120, or
		// 300 seconds--are supported. If an invalid
		// value is given, an error will be returned.
		// When choosing a duration, it is useful to
		// keep in mind the frequency of the underlying
		// time series data (which may also be affected
		// by any alignments specified in the
		// aggregations field); a good duration is long
		// enough so that a single outlier does not
		// generate spurious alerts, but short enough
		// that unhealthy states are detected and
		// alerted on quickly.
		duration!: string
		trigger?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_monitoring_query_language/$defs/trigger", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_monitoring_query_language/$defs/trigger"]])

		// A condition control that determines how
		// metric-threshold conditions are evaluated when
		// data stops arriving. Possible values:
		// ["EVALUATION_MISSING_DATA_INACTIVE",
		// "EVALUATION_MISSING_DATA_ACTIVE",
		// "EVALUATION_MISSING_DATA_NO_OP"]
		evaluation_missing_data?: string

		// Monitoring Query Language query that outputs a boolean stream.
		query!: string
	})

	_#defs: "/$defs/conditions/$defs/condition_monitoring_query_language/$defs/trigger": close({
		// The absolute number of time series
		// that must fail the predicate for the
		// condition to be triggered.
		count?: number

		// The percentage of time series that
		// must fail the predicate for the
		// condition to be triggered.
		percent?: number
	})

	_#defs: "/$defs/conditions/$defs/condition_prometheus_query_language": close({
		// The alerting rule name of this alert in the corresponding
		// Prometheus
		// configuration file.
		//
		// Some external tools may require this field to be populated
		// correctly
		// in order to refer to the original Prometheus configuration
		// file.
		// The rule group name and the alert name are necessary to update
		// the
		// relevant AlertPolicies in case the definition of the rule group
		// changes
		// in the future.
		//
		// This field is optional. If this field is not empty, then it
		// must be a
		// valid Prometheus label name.
		alert_rule?: string

		// Whether to disable metric existence validation for this
		// condition.
		//
		// This allows alerting policies to be defined on metrics that do
		// not yet
		// exist, improving advanced customer workflows such as
		// configuring
		// alerting policies using Terraform.
		//
		// Users with the 'monitoring.alertPolicyViewer' role are able to
		// see the
		// name of the non-existent metric in the alerting policy
		// condition.
		disable_metric_validation?: bool

		// Alerts are considered firing once their PromQL expression
		// evaluated
		// to be "true" for this long. Alerts whose PromQL expression was
		// not
		// evaluated to be "true" for long enough are considered pending.
		// The
		// default value is zero. Must be zero or positive.
		duration?: string

		// How often this rule should be evaluated. Must be a positive
		// multiple
		// of 30 seconds or missing. The default value is 30 seconds. If
		// this
		// PrometheusQueryLanguageCondition was generated from a
		// Prometheus
		// alerting rule, then this value should be taken from the
		// enclosing
		// rule group.
		evaluation_interval?: string

		// Labels to add to or overwrite in the PromQL query result. Label
		// names
		// must be valid.
		//
		// Label values can be templatized by using variables. The only
		// available
		// variable names are the names of the labels in the PromQL
		// result,
		// although label names beginning with \_\_ (two "\_") are
		// reserved for
		// internal use. "labels" may be empty. This field is intended to
		// be used
		// for organizing and identifying the AlertPolicy.
		labels?: [string]: string

		// The PromQL expression to evaluate. Every evaluation cycle this
		// expression is evaluated at the current time, and all resultant
		// time
		// series become pending/firing alerts. This field must not be
		// empty.
		query!: string

		// The rule group name of this alert in the corresponding
		// Prometheus
		// configuration file.
		//
		// Some external tools may require this field to be populated
		// correctly
		// in order to refer to the original Prometheus configuration
		// file.
		// The rule group name and the alert name are necessary to update
		// the
		// relevant AlertPolicies in case the definition of the rule group
		// changes
		// in the future. This field is optional.
		rule_group?: string
	})

	_#defs: "/$defs/conditions/$defs/condition_sql": close({
		boolean_test?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_sql/$defs/boolean_test", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_sql/$defs/boolean_test"]])
		daily?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_sql/$defs/daily", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_sql/$defs/daily"]])
		hourly?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_sql/$defs/hourly", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_sql/$defs/hourly"]])
		minutes?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_sql/$defs/minutes", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_sql/$defs/minutes"]])
		row_count_test?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_sql/$defs/row_count_test", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_sql/$defs/row_count_test"]])

		// The Log Analytics SQL query to run, as a string. The query must
		// conform to the required shape. Specifically, the query must not
		// try to
		// filter the input by time. A filter will automatically be
		// applied
		// to filter the input so that the query receives all rows
		// received
		// since the last time the query was run.
		query!: string
	})

	_#defs: "/$defs/conditions/$defs/condition_sql/$defs/boolean_test": close({
		// The name of the column containing the boolean value. If the
		// value in a row is
		// NULL, that row is ignored.
		column!: string
	})

	_#defs: "/$defs/conditions/$defs/condition_sql/$defs/daily": close({
		execution_time?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_sql/$defs/daily/$defs/execution_time", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_sql/$defs/daily/$defs/execution_time"]])

		// The number of days between runs. Must be greater than or equal
		// to 1 day and less than or equal to 30 days.
		periodicity!: number
	})

	_#defs: "/$defs/conditions/$defs/condition_sql/$defs/daily/$defs/execution_time": close({
		// Hours of a day in 24 hour format. Must be greater than or equal
		// to 0 and typically must be less than or equal to 23. An API may
		// choose to allow the value "24:00:00" for scenarios like
		// business
		// closing time.
		hours?: number

		// Minutes of an hour. Must be greater than or equal to 0 and
		// less than or equal to 59.
		minutes?: number

		// Fractions of seconds, in nanoseconds. Must be greater than or
		// equal to 0 and less than or equal to 999,999,999.
		nanos?: number

		// Seconds of a minute. Must be greater than or equal to 0 and
		// typically must be less than or equal to 59. An API may allow
		// the
		// value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/conditions/$defs/condition_sql/$defs/hourly": close({
		// The number of minutes after the hour (in UTC) to run the query.
		// Must be greater than or equal to 0 minutes and less than or
		// equal to
		// 59 minutes. If left unspecified, then an arbitrary offset is
		// used.
		minute_offset?: number

		// Number of hours between runs. The interval must be greater than
		// or
		// equal to 1 hour and less than or equal to 48 hours.
		periodicity!: number
	})

	_#defs: "/$defs/conditions/$defs/condition_sql/$defs/minutes": close({
		// Number of minutes between runs. The interval must be greater
		// than or
		// equal to 5 minutes and less than or equal to 1440 minutes.
		periodicity!: number
	})

	_#defs: "/$defs/conditions/$defs/condition_sql/$defs/row_count_test": close({
		// The comparison to apply between the time
		// series (indicated by filter and aggregation)
		// and the threshold (indicated by
		// threshold_value). The comparison is applied
		// on each time series, with the time series on
		// the left-hand side and the threshold on the
		// right-hand side. Only COMPARISON_LT and
		// COMPARISON_GT are supported currently. Possible values:
		// ["COMPARISON_GT", "COMPARISON_GE", "COMPARISON_LT",
		// "COMPARISON_LE", "COMPARISON_EQ", "COMPARISON_NE"]
		comparison!: string

		// The value against which to compare the row count.
		threshold!: number
	})

	_#defs: "/$defs/conditions/$defs/condition_threshold": close({
		// The comparison to apply between the time
		// series (indicated by filter and aggregation)
		// and the threshold (indicated by
		// threshold_value). The comparison is applied
		// on each time series, with the time series on
		// the left-hand side and the threshold on the
		// right-hand side. Only COMPARISON_LT and
		// COMPARISON_GT are supported currently. Possible values:
		// ["COMPARISON_GT", "COMPARISON_GE", "COMPARISON_LT",
		// "COMPARISON_LE", "COMPARISON_EQ", "COMPARISON_NE"]
		comparison!: string

		// A filter that identifies a time series that
		// should be used as the denominator of a ratio
		// that will be compared with the threshold. If
		// a denominator_filter is specified, the time
		// series specified by the filter field will be
		// used as the numerator.The filter is similar
		// to the one that is specified in the
		// MetricService.ListTimeSeries request (that
		// call is useful to verify the time series
		// that will be retrieved / processed) and must
		// specify the metric type and optionally may
		// contain restrictions on resource type,
		// resource labels, and metric labels. This
		// field may not exceed 2048 Unicode characters
		// in length.
		denominator_filter?: string

		// The amount of time that a time series must
		// violate the threshold to be considered
		// failing. Currently, only values that are a
		// multiple of a minute--e.g., 0, 60, 120, or
		// 300 seconds--are supported. If an invalid
		// value is given, an error will be returned.
		// When choosing a duration, it is useful to
		// keep in mind the frequency of the underlying
		// time series data (which may also be affected
		// by any alignments specified in the
		// aggregations field); a good duration is long
		// enough so that a single outlier does not
		// generate spurious alerts, but short enough
		// that unhealthy states are detected and
		// alerted on quickly.
		duration!: string

		// A condition control that determines how
		// metric-threshold conditions are evaluated when
		// data stops arriving. Possible values:
		// ["EVALUATION_MISSING_DATA_INACTIVE",
		// "EVALUATION_MISSING_DATA_ACTIVE",
		// "EVALUATION_MISSING_DATA_NO_OP"]
		evaluation_missing_data?: string

		// A filter that identifies which time series
		// should be compared with the threshold.The
		// filter is similar to the one that is
		// specified in the
		// MetricService.ListTimeSeries request (that
		// call is useful to verify the time series
		// that will be retrieved / processed) and must
		// specify the metric type and optionally may
		// contain restrictions on resource type,
		// resource labels, and metric labels. This
		// field may not exceed 2048 Unicode characters
		// in length.
		filter?: string
		aggregations?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_threshold/$defs/aggregations", [..._#defs."/$defs/conditions/$defs/condition_threshold/$defs/aggregations"]])
		denominator_aggregations?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_threshold/$defs/denominator_aggregations", [..._#defs."/$defs/conditions/$defs/condition_threshold/$defs/denominator_aggregations"]])
		forecast_options?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_threshold/$defs/forecast_options", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_threshold/$defs/forecast_options"]])

		// A value against which to compare the time
		// series.
		threshold_value?: number
		trigger?: matchN(1, [_#defs."/$defs/conditions/$defs/condition_threshold/$defs/trigger", list.MaxItems(1) & [..._#defs."/$defs/conditions/$defs/condition_threshold/$defs/trigger"]])
	})

	_#defs: "/$defs/conditions/$defs/condition_threshold/$defs/aggregations": close({
		// The alignment period for per-time
		// series alignment. If present,
		// alignmentPeriod must be at least
		// 60 seconds. After per-time series
		// alignment, each time series will
		// contain data points only on the
		// period boundaries. If
		// perSeriesAligner is not specified
		// or equals ALIGN_NONE, then this
		// field is ignored. If
		// perSeriesAligner is specified and
		// does not equal ALIGN_NONE, then
		// this field must be defined;
		// otherwise an error is returned.
		alignment_period?: string

		// The approach to be used to combine
		// time series. Not all reducer
		// functions may be applied to all
		// time series, depending on the
		// metric type and the value type of
		// the original time series.
		// Reduction may change the metric
		// type of value type of the time
		// series.Time series data must be
		// aligned in order to perform cross-
		// time series reduction. If
		// crossSeriesReducer is specified,
		// then perSeriesAligner must be
		// specified and not equal ALIGN_NONE
		// and alignmentPeriod must be
		// specified; otherwise, an error is
		// returned. Possible values: ["REDUCE_NONE", "REDUCE_MEAN",
		// "REDUCE_MIN", "REDUCE_MAX", "REDUCE_SUM", "REDUCE_STDDEV",
		// "REDUCE_COUNT", "REDUCE_COUNT_TRUE", "REDUCE_COUNT_FALSE",
		// "REDUCE_FRACTION_TRUE", "REDUCE_PERCENTILE_99",
		// "REDUCE_PERCENTILE_95", "REDUCE_PERCENTILE_50",
		// "REDUCE_PERCENTILE_05"]
		cross_series_reducer?: string

		// The set of fields to preserve when
		// crossSeriesReducer is specified.
		// The groupByFields determine how
		// the time series are partitioned
		// into subsets prior to applying the
		// aggregation function. Each subset
		// contains time series that have the
		// same value for each of the
		// grouping fields. Each individual
		// time series is a member of exactly
		// one subset. The crossSeriesReducer
		// is applied to each subset of time
		// series. It is not possible to
		// reduce across different resource
		// types, so this field implicitly
		// contains resource.type. Fields not
		// specified in groupByFields are
		// aggregated away. If groupByFields
		// is not specified and all the time
		// series have the same resource
		// type, then the time series are
		// aggregated into a single output
		// time series. If crossSeriesReducer
		// is not defined, this field is
		// ignored.
		group_by_fields?: [...string]

		// The approach to be used to align
		// individual time series. Not all
		// alignment functions may be applied
		// to all time series, depending on
		// the metric type and value type of
		// the original time series.
		// Alignment may change the metric
		// type or the value type of the time
		// series.Time series data must be
		// aligned in order to perform cross-
		// time series reduction. If
		// crossSeriesReducer is specified,
		// then perSeriesAligner must be
		// specified and not equal ALIGN_NONE
		// and alignmentPeriod must be
		// specified; otherwise, an error is
		// returned. Possible values: ["ALIGN_NONE", "ALIGN_DELTA",
		// "ALIGN_RATE", "ALIGN_INTERPOLATE", "ALIGN_NEXT_OLDER",
		// "ALIGN_MIN", "ALIGN_MAX", "ALIGN_MEAN", "ALIGN_COUNT",
		// "ALIGN_SUM", "ALIGN_STDDEV", "ALIGN_COUNT_TRUE",
		// "ALIGN_COUNT_FALSE", "ALIGN_FRACTION_TRUE",
		// "ALIGN_PERCENTILE_99", "ALIGN_PERCENTILE_95",
		// "ALIGN_PERCENTILE_50", "ALIGN_PERCENTILE_05",
		// "ALIGN_PERCENT_CHANGE"]
		per_series_aligner?: string
	})

	_#defs: "/$defs/conditions/$defs/condition_threshold/$defs/denominator_aggregations": close({
		// The alignment period for per-time
		// series alignment. If present,
		// alignmentPeriod must be at least
		// 60 seconds. After per-time series
		// alignment, each time series will
		// contain data points only on the
		// period boundaries. If
		// perSeriesAligner is not specified
		// or equals ALIGN_NONE, then this
		// field is ignored. If
		// perSeriesAligner is specified and
		// does not equal ALIGN_NONE, then
		// this field must be defined;
		// otherwise an error is returned.
		alignment_period?: string

		// The approach to be used to combine
		// time series. Not all reducer
		// functions may be applied to all
		// time series, depending on the
		// metric type and the value type of
		// the original time series.
		// Reduction may change the metric
		// type of value type of the time
		// series.Time series data must be
		// aligned in order to perform cross-
		// time series reduction. If
		// crossSeriesReducer is specified,
		// then perSeriesAligner must be
		// specified and not equal ALIGN_NONE
		// and alignmentPeriod must be
		// specified; otherwise, an error is
		// returned. Possible values: ["REDUCE_NONE", "REDUCE_MEAN",
		// "REDUCE_MIN", "REDUCE_MAX", "REDUCE_SUM", "REDUCE_STDDEV",
		// "REDUCE_COUNT", "REDUCE_COUNT_TRUE", "REDUCE_COUNT_FALSE",
		// "REDUCE_FRACTION_TRUE", "REDUCE_PERCENTILE_99",
		// "REDUCE_PERCENTILE_95", "REDUCE_PERCENTILE_50",
		// "REDUCE_PERCENTILE_05"]
		cross_series_reducer?: string

		// The set of fields to preserve when
		// crossSeriesReducer is specified.
		// The groupByFields determine how
		// the time series are partitioned
		// into subsets prior to applying the
		// aggregation function. Each subset
		// contains time series that have the
		// same value for each of the
		// grouping fields. Each individual
		// time series is a member of exactly
		// one subset. The crossSeriesReducer
		// is applied to each subset of time
		// series. It is not possible to
		// reduce across different resource
		// types, so this field implicitly
		// contains resource.type. Fields not
		// specified in groupByFields are
		// aggregated away. If groupByFields
		// is not specified and all the time
		// series have the same resource
		// type, then the time series are
		// aggregated into a single output
		// time series. If crossSeriesReducer
		// is not defined, this field is
		// ignored.
		group_by_fields?: [...string]

		// The approach to be used to align
		// individual time series. Not all
		// alignment functions may be applied
		// to all time series, depending on
		// the metric type and value type of
		// the original time series.
		// Alignment may change the metric
		// type or the value type of the time
		// series.Time series data must be
		// aligned in order to perform cross-
		// time series reduction. If
		// crossSeriesReducer is specified,
		// then perSeriesAligner must be
		// specified and not equal ALIGN_NONE
		// and alignmentPeriod must be
		// specified; otherwise, an error is
		// returned. Possible values: ["ALIGN_NONE", "ALIGN_DELTA",
		// "ALIGN_RATE", "ALIGN_INTERPOLATE", "ALIGN_NEXT_OLDER",
		// "ALIGN_MIN", "ALIGN_MAX", "ALIGN_MEAN", "ALIGN_COUNT",
		// "ALIGN_SUM", "ALIGN_STDDEV", "ALIGN_COUNT_TRUE",
		// "ALIGN_COUNT_FALSE", "ALIGN_FRACTION_TRUE",
		// "ALIGN_PERCENTILE_99", "ALIGN_PERCENTILE_95",
		// "ALIGN_PERCENTILE_50", "ALIGN_PERCENTILE_05",
		// "ALIGN_PERCENT_CHANGE"]
		per_series_aligner?: string
	})

	_#defs: "/$defs/conditions/$defs/condition_threshold/$defs/forecast_options": close({
		// The length of time into the future to forecast
		// whether a timeseries will violate the threshold.
		// If the predicted value is found to violate the
		// threshold, and the violation is observed in all
		// forecasts made for the Configured 'duration',
		// then the timeseries is considered to be failing.
		forecast_horizon!: string
	})

	_#defs: "/$defs/conditions/$defs/condition_threshold/$defs/trigger": close({
		// The absolute number of time series
		// that must fail the predicate for the
		// condition to be triggered.
		count?: number

		// The percentage of time series that
		// must fail the predicate for the
		// condition to be triggered.
		percent?: number
	})

	_#defs: "/$defs/documentation/$defs/links": close({
		// A short display name for the link. The display name must not be
		// empty or exceed 63 characters. Example: "playbook".
		display_name?: string

		// The url of a webpage. A url can be templatized by using
		// variables in the path or the query parameters. The total
		// length of a URL should not exceed 2083 characters before and
		// after variable expansion. Example:
		// "https://my_domain.com/playbook?name=${resource.name}".
		url?: string
	})
}
