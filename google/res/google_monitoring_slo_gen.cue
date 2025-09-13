package res

import "list"

#google_monitoring_slo: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_monitoring_slo")
	close({
		// A calendar period, semantically "since the start of the current
		// <calendarPeriod>". Possible values: ["DAY", "WEEK",
		// "FORTNIGHT", "MONTH"]
		calendar_period?: string

		// Name used for UI elements listing this SLO.
		display_name?: string

		// The fraction of service that must be good in order for this
		// objective
		// to be met. 0 < goal <= 0.999
		goal!: number

		// The full resource name for this service. The syntax is:
		// projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]
		name?: string
		id?:   string

		// A rolling time period, semantically "in the past X days".
		// Must be between 1 to 30 days, inclusive.
		rolling_period_days?: number
		project?:             string
		basic_sli?: matchN(1, [#basic_sli, list.MaxItems(1) & [...#basic_sli]])
		request_based_sli?: matchN(1, [#request_based_sli, list.MaxItems(1) & [...#request_based_sli]])
		timeouts?: #timeouts
		windows_based_sli?: matchN(1, [#windows_based_sli, list.MaxItems(1) & [...#windows_based_sli]])

		// ID of the service to which this SLO belongs.
		service!: string

		// The id to use for this ServiceLevelObjective. If omitted, an id
		// will be generated instead.
		slo_id?: string

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

	#basic_sli: close({
		// An optional set of locations to which this SLI is relevant.
		// Telemetry from other locations will not be used to calculate
		// performance for this SLI. If omitted, this SLI applies to all
		// locations in which the Service has activity. For service types
		// that don't support breaking down by location, setting this
		// field will result in an error.
		location?: [...string]

		// An optional set of RPCs to which this SLI is relevant.
		// Telemetry from other methods will not be used to calculate
		// performance for this SLI. If omitted, this SLI applies to all
		// the Service's methods. For service types that don't support
		// breaking down by method, setting this field will result in an
		// error.
		method?: [...string]
		availability?: matchN(1, [_#defs."/$defs/basic_sli/$defs/availability", list.MaxItems(1) & [..._#defs."/$defs/basic_sli/$defs/availability"]])

		// The set of API versions to which this SLI is relevant.
		// Telemetry from other API versions will not be used to
		// calculate performance for this SLI. If omitted,
		// this SLI applies to all API versions. For service types
		// that don't support breaking down by version, setting this
		// field will result in an error.
		version?: [...string]
		latency?: matchN(1, [_#defs."/$defs/basic_sli/$defs/latency", list.MaxItems(1) & [..._#defs."/$defs/basic_sli/$defs/latency"]])
	})

	#request_based_sli: close({
		distribution_cut?: matchN(1, [_#defs."/$defs/request_based_sli/$defs/distribution_cut", list.MaxItems(1) & [..._#defs."/$defs/request_based_sli/$defs/distribution_cut"]])
		good_total_ratio?: matchN(1, [_#defs."/$defs/request_based_sli/$defs/good_total_ratio", list.MaxItems(1) & [..._#defs."/$defs/request_based_sli/$defs/good_total_ratio"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#windows_based_sli: close({
		good_total_ratio_threshold?: matchN(1, [_#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold", list.MaxItems(1) & [..._#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold"]])
		metric_mean_in_range?: matchN(1, [_#defs."/$defs/windows_based_sli/$defs/metric_mean_in_range", list.MaxItems(1) & [..._#defs."/$defs/windows_based_sli/$defs/metric_mean_in_range"]])
		metric_sum_in_range?: matchN(1, [_#defs."/$defs/windows_based_sli/$defs/metric_sum_in_range", list.MaxItems(1) & [..._#defs."/$defs/windows_based_sli/$defs/metric_sum_in_range"]])

		// A TimeSeries [monitoring
		// filter](https://cloud.google.com/monitoring/api/v3/filters)
		// with ValueType = BOOL. The window is good if any true values
		// appear in the window. One of 'good_bad_metric_filter',
		// 'good_total_ratio_threshold', 'metric_mean_in_range',
		// 'metric_sum_in_range' must be set for 'windows_based_sli'.
		good_bad_metric_filter?: string

		// Duration over which window quality is evaluated, given as a
		// duration string "{X}s" representing X seconds. Must be an
		// integer fraction of a day and at least 60s.
		window_period?: string
	})

	_#defs: "/$defs/basic_sli/$defs/availability": close({
		// Whether an availability SLI is enabled or not. Must be set to
		// true. Defaults to 'true'.
		enabled?: bool
	})

	_#defs: "/$defs/basic_sli/$defs/latency": close({
		// A duration string, e.g. 10s.
		// Good service is defined to be the count of requests made to
		// this service that return in no more than threshold.
		threshold!: string
	})

	_#defs: "/$defs/request_based_sli/$defs/distribution_cut": close({
		range?: matchN(1, [_#defs."/$defs/request_based_sli/$defs/distribution_cut/$defs/range", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/request_based_sli/$defs/distribution_cut/$defs/range"]])

		// A TimeSeries [monitoring
		// filter](https://cloud.google.com/monitoring/api/v3/filters)
		// aggregating values to quantify the good service provided.
		//
		// Must have ValueType = DISTRIBUTION and
		// MetricKind = DELTA or MetricKind = CUMULATIVE.
		distribution_filter!: string
	})

	_#defs: "/$defs/request_based_sli/$defs/distribution_cut/$defs/range": close({
		// max value for the range (inclusive). If not given,
		// will be set to 0
		max?: number

		// Min value for the range (inclusive). If not given,
		// will be set to 0
		min?: number
	})

	_#defs: "/$defs/request_based_sli/$defs/good_total_ratio": close({
		// A TimeSeries [monitoring
		// filter](https://cloud.google.com/monitoring/api/v3/filters)
		// quantifying bad service provided, either demanded service that
		// was not provided or demanded service that was of inadequate
		// quality.
		//
		// Must have ValueType = DOUBLE or ValueType = INT64 and
		// must have MetricKind = DELTA or MetricKind = CUMULATIVE.
		//
		// Exactly two of
		// 'good_service_filter','bad_service_filter','total_service_filter'
		// must be set (good + bad = total is assumed).
		bad_service_filter?: string

		// A TimeSeries [monitoring
		// filter](https://cloud.google.com/monitoring/api/v3/filters)
		// quantifying good service provided.
		// Must have ValueType = DOUBLE or ValueType = INT64 and
		// must have MetricKind = DELTA or MetricKind = CUMULATIVE.
		//
		// Exactly two of
		// 'good_service_filter','bad_service_filter','total_service_filter'
		// must be set (good + bad = total is assumed).
		good_service_filter?: string

		// A TimeSeries [monitoring
		// filter](https://cloud.google.com/monitoring/api/v3/filters)
		// quantifying total demanded service.
		//
		// Must have ValueType = DOUBLE or ValueType = INT64 and
		// must have MetricKind = DELTA or MetricKind = CUMULATIVE.
		//
		// Exactly two of
		// 'good_service_filter','bad_service_filter','total_service_filter'
		// must be set (good + bad = total is assumed).
		total_service_filter?: string
	})

	_#defs: "/$defs/windows_based_sli/$defs/good_total_ratio_threshold": close({
		basic_sli_performance?: matchN(1, [_#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/basic_sli_performance", list.MaxItems(1) & [..._#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/basic_sli_performance"]])
		performance?: matchN(1, [_#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/performance", list.MaxItems(1) & [..._#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/performance"]])

		// If window performance >= threshold, the window is counted
		// as good.
		threshold?: number
	})

	_#defs: "/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/basic_sli_performance": close({
		// An optional set of locations to which this SLI is relevant.
		// Telemetry from other locations will not be used to calculate
		// performance for this SLI. If omitted, this SLI applies to all
		// locations in which the Service has activity. For service types
		// that don't support breaking down by location, setting this
		// field will result in an error.
		location?: [...string]

		// An optional set of RPCs to which this SLI is relevant.
		// Telemetry from other methods will not be used to calculate
		// performance for this SLI. If omitted, this SLI applies to all
		// the Service's methods. For service types that don't support
		// breaking down by method, setting this field will result in an
		// error.
		method?: [...string]
		availability?: matchN(1, [_#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/basic_sli_performance/$defs/availability", list.MaxItems(1) & [..._#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/basic_sli_performance/$defs/availability"]])

		// The set of API versions to which this SLI is relevant.
		// Telemetry from other API versions will not be used to
		// calculate performance for this SLI. If omitted,
		// this SLI applies to all API versions. For service types
		// that don't support breaking down by version, setting this
		// field will result in an error.
		version?: [...string]
		latency?: matchN(1, [_#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/basic_sli_performance/$defs/latency", list.MaxItems(1) & [..._#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/basic_sli_performance/$defs/latency"]])
	})

	_#defs: "/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/basic_sli_performance/$defs/availability": close({
		// Whether an availability SLI is enabled or not. Must be set to
		// 'true. Defaults to 'true'.
		enabled?: bool
	})

	_#defs: "/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/basic_sli_performance/$defs/latency": close({
		// A duration string, e.g. 10s.
		// Good service is defined to be the count of requests made to
		// this service that return in no more than threshold.
		threshold!: string
	})

	_#defs: "/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/performance": close({
		distribution_cut?: matchN(1, [_#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/performance/$defs/distribution_cut", list.MaxItems(1) & [..._#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/performance/$defs/distribution_cut"]])
		good_total_ratio?: matchN(1, [_#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/performance/$defs/good_total_ratio", list.MaxItems(1) & [..._#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/performance/$defs/good_total_ratio"]])
	})

	_#defs: "/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/performance/$defs/distribution_cut": close({
		range?: matchN(1, [_#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/performance/$defs/distribution_cut/$defs/range", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/performance/$defs/distribution_cut/$defs/range"]])

		// A TimeSeries [monitoring
		// filter](https://cloud.google.com/monitoring/api/v3/filters)
		// aggregating values to quantify the good service provided.
		//
		// Must have ValueType = DISTRIBUTION and
		// MetricKind = DELTA or MetricKind = CUMULATIVE.
		distribution_filter!: string
	})

	_#defs: "/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/performance/$defs/distribution_cut/$defs/range": close({
		// max value for the range (inclusive). If not given,
		// will be set to 0
		max?: number

		// Min value for the range (inclusive). If not given,
		// will be set to 0
		min?: number
	})

	_#defs: "/$defs/windows_based_sli/$defs/good_total_ratio_threshold/$defs/performance/$defs/good_total_ratio": close({
		// A TimeSeries [monitoring
		// filter](https://cloud.google.com/monitoring/api/v3/filters)
		// quantifying bad service provided, either demanded service that
		// was not provided or demanded service that was of inadequate
		// quality. Exactly two of
		// good, bad, or total service filter must be defined (where
		// good + bad = total is assumed)
		//
		// Must have ValueType = DOUBLE or ValueType = INT64 and
		// must have MetricKind = DELTA or MetricKind = CUMULATIVE.
		bad_service_filter?: string

		// A TimeSeries [monitoring
		// filter](https://cloud.google.com/monitoring/api/v3/filters)
		// quantifying good service provided. Exactly two of
		// good, bad, or total service filter must be defined (where
		// good + bad = total is assumed)
		//
		// Must have ValueType = DOUBLE or ValueType = INT64 and
		// must have MetricKind = DELTA or MetricKind = CUMULATIVE.
		good_service_filter?: string

		// A TimeSeries [monitoring
		// filter](https://cloud.google.com/monitoring/api/v3/filters)
		// quantifying total demanded service. Exactly two of
		// good, bad, or total service filter must be defined (where
		// good + bad = total is assumed)
		//
		// Must have ValueType = DOUBLE or ValueType = INT64 and
		// must have MetricKind = DELTA or MetricKind = CUMULATIVE.
		total_service_filter?: string
	})

	_#defs: "/$defs/windows_based_sli/$defs/metric_mean_in_range": close({
		range?: matchN(1, [_#defs."/$defs/windows_based_sli/$defs/metric_mean_in_range/$defs/range", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/windows_based_sli/$defs/metric_mean_in_range/$defs/range"]])

		// A [monitoring
		// filter](https://cloud.google.com/monitoring/api/v3/filters)
		// specifying the TimeSeries to use for evaluating window
		// The provided TimeSeries must have ValueType = INT64 or
		// ValueType = DOUBLE and MetricKind = GAUGE. Mean value 'X'
		// should satisfy 'range.min <= X <= range.max'
		// under good service.
		time_series!: string
	})

	_#defs: "/$defs/windows_based_sli/$defs/metric_mean_in_range/$defs/range": close({
		// max value for the range (inclusive). If not given,
		// will be set to "infinity", defining an open range
		// ">= range.min"
		max?: number

		// Min value for the range (inclusive). If not given,
		// will be set to "-infinity", defining an open range
		// "< range.max"
		min?: number
	})

	_#defs: "/$defs/windows_based_sli/$defs/metric_sum_in_range": close({
		range?: matchN(1, [_#defs."/$defs/windows_based_sli/$defs/metric_sum_in_range/$defs/range", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/windows_based_sli/$defs/metric_sum_in_range/$defs/range"]])

		// A [monitoring
		// filter](https://cloud.google.com/monitoring/api/v3/filters)
		// specifying the TimeSeries to use for evaluating window
		// quality. The provided TimeSeries must have
		// ValueType = INT64 or ValueType = DOUBLE and
		// MetricKind = GAUGE.
		//
		// Summed value 'X' should satisfy
		// 'range.min <= X <= range.max' for a good window.
		time_series!: string
	})

	_#defs: "/$defs/windows_based_sli/$defs/metric_sum_in_range/$defs/range": close({
		// max value for the range (inclusive). If not given,
		// will be set to "infinity", defining an open range
		// ">= range.min"
		max?: number

		// Min value for the range (inclusive). If not given,
		// will be set to "-infinity", defining an open range
		// "< range.max"
		min?: number
	})
}
