package res

import "list"

#google_logging_metric: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_logging_metric")
	close({
		// The resource name of the Log Bucket that owns the Log Metric.
		// Only Log Buckets in projects
		// are supported. The bucket has to be in the same project as the
		// metric.
		bucket_name?: string

		// A description of this metric, which is used in documentation.
		// The maximum length of the
		// description is 8000 characters.
		description?: string

		// If set to True, then this metric is disabled and it does not
		// generate any points.
		disabled?: bool

		// An advanced logs filter
		// (https://cloud.google.com/logging/docs/view/advanced-filters)
		// which
		// is used to match log entries.
		filter!: string
		id?:     string

		// A map from a label key string to an extractor expression which
		// is used to extract data from a log
		// entry field and assign as the label value. Each label key
		// specified in the LabelDescriptor must
		// have an associated extractor expression in this map. The syntax
		// of the extractor expression is
		// the same as for the valueExtractor field.
		label_extractors?: [string]: string
		bucket_options?: matchN(1, [#bucket_options, list.MaxItems(1) & [...#bucket_options]])
		metric_descriptor?: matchN(1, [#metric_descriptor, list.MaxItems(1) & [...#metric_descriptor]])
		timeouts?: #timeouts

		// The client-assigned metric identifier. Examples -
		// "error_count", "nginx/requests".
		// Metric identifiers are limited to 100 characters and can
		// include only the following
		// characters A-Z, a-z, 0-9, and the special characters
		// _-.,+!*',()%/. The forward-slash
		// character (/) denotes a hierarchy of name pieces, and it cannot
		// be the first character
		// of the name.
		name!: string

		// A valueExtractor is required when using a distribution
		// logs-based metric to extract the values to
		// record from a log entry. Two functions are supported for value
		// extraction - EXTRACT(field) or
		// REGEXP_EXTRACT(field, regex). The argument are 1. field - The
		// name of the log entry field from which
		// the value is to be extracted. 2. regex - A regular expression
		// using the Google RE2 syntax
		// (https://github.com/google/re2/wiki/Syntax) with a single
		// capture group to extract data from the specified
		// log entry field. The value of the field is converted to a
		// string before applying the regex. It is an
		// error to specify a regex that does not include exactly one
		// capture group.
		value_extractor?: string
		project?:         string
	})

	#bucket_options: close({
		explicit_buckets?: matchN(1, [_#defs."/$defs/bucket_options/$defs/explicit_buckets", list.MaxItems(1) & [..._#defs."/$defs/bucket_options/$defs/explicit_buckets"]])
		exponential_buckets?: matchN(1, [_#defs."/$defs/bucket_options/$defs/exponential_buckets", list.MaxItems(1) & [..._#defs."/$defs/bucket_options/$defs/exponential_buckets"]])
		linear_buckets?: matchN(1, [_#defs."/$defs/bucket_options/$defs/linear_buckets", list.MaxItems(1) & [..._#defs."/$defs/bucket_options/$defs/linear_buckets"]])
	})

	#metric_descriptor: close({
		// A concise name for the metric, which can be displayed in user
		// interfaces. Use sentence case
		// without an ending period, for example "Request count". This
		// field is optional but it is
		// recommended to be set for any metrics associated with
		// user-visible concepts, such as Quota.
		display_name?: string

		// Whether the metric records instantaneous values, changes to a
		// value, etc.
		// Some combinations of metricKind and valueType might not be
		// supported.
		// For counter metrics, set this to DELTA. Possible values:
		// ["DELTA", "GAUGE", "CUMULATIVE"]
		metric_kind!: string

		// The unit in which the metric value is reported. It is only
		// applicable if the valueType is
		// 'INT64', 'DOUBLE', or 'DISTRIBUTION'. The supported units are a
		// subset of
		// [The Unified Code for Units of
		// Measure](http://unitsofmeasure.org/ucum.html) standard
		unit?: string
		labels?: matchN(1, [_#defs."/$defs/metric_descriptor/$defs/labels", [..._#defs."/$defs/metric_descriptor/$defs/labels"]])

		// Whether the measurement is an integer, a floating-point number,
		// etc.
		// Some combinations of metricKind and valueType might not be
		// supported.
		// For counter metrics, set this to INT64. Possible values:
		// ["BOOL", "INT64", "DOUBLE", "STRING", "DISTRIBUTION", "MONEY"]
		value_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/bucket_options/$defs/explicit_buckets": close({
		// The values must be monotonically increasing.
		bounds!: [...number]
	})

	_#defs: "/$defs/bucket_options/$defs/exponential_buckets": close({
		// Must be greater than 1.
		growth_factor!: number

		// Must be greater than 0.
		num_finite_buckets!: number

		// Must be greater than 0.
		scale!: number
	})

	_#defs: "/$defs/bucket_options/$defs/linear_buckets": close({
		// Must be greater than 0.
		num_finite_buckets!: number

		// Lower bound of the first bucket.
		offset!: number

		// Must be greater than 0.
		width!: number
	})

	_#defs: "/$defs/metric_descriptor/$defs/labels": close({
		// A human-readable description for the label.
		description?: string

		// The label key.
		key!: string

		// The type of data that can be assigned to the label. Default
		// value: "STRING" Possible values: ["BOOL", "INT64", "STRING"]
		value_type?: string
	})
}
