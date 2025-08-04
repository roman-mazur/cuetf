package res

import "list"

#elasticstack_kibana_slo: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_slo")
	close({
		// An `occurrences` budgeting method uses the number of good and
		// total events during the time window. A `timeslices` budgeting
		// method uses the number of good slices and total slices during
		// the time window. A slice is an arbitrary time window (smaller
		// than the overall SLO time window) that is either considered
		// good or bad, calculated from the timeslice threshold and the
		// ratio of good over total events that happened during the slice
		// window. A budgeting method is required and must be either
		// occurrences or timeslices.
		budgeting_method!: string

		// A description for the SLO.
		description!: string

		// Optional group by fields to use to generate an SLO per distinct
		// value.
		group_by?: [...string]

		// The name of the SLO.
		name!: string
		id?:   string

		// An ID (8 and 36 characters). If omitted, a UUIDv1 will be
		// generated server-side.
		slo_id?: string
		apm_availability_indicator?: matchN(1, [#apm_availability_indicator, list.MaxItems(1) & [...#apm_availability_indicator]])
		apm_latency_indicator?: matchN(1, [#apm_latency_indicator, list.MaxItems(1) & [...#apm_latency_indicator]])
		histogram_custom_indicator?: matchN(1, [#histogram_custom_indicator, list.MaxItems(1) & [...#histogram_custom_indicator]])
		kql_custom_indicator?: matchN(1, [#kql_custom_indicator, list.MaxItems(1) & [...#kql_custom_indicator]])
		metric_custom_indicator?: matchN(1, [#metric_custom_indicator, list.MaxItems(1) & [...#metric_custom_indicator]])
		objective?: matchN(1, [#objective, list.MaxItems(1) & [_, ...] & [...#objective]])
		settings?: matchN(1, [#settings, list.MaxItems(1) & [...#settings]])
		time_window?: matchN(1, [#time_window, list.MaxItems(1) & [_, ...] & [...#time_window]])
		timeslice_metric_indicator?: matchN(1, [#timeslice_metric_indicator, list.MaxItems(1) & [...#timeslice_metric_indicator]])

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string

		// The tags for the SLO.
		tags?: [...string]
	})

	#apm_availability_indicator: close({
		environment!:      string
		filter?:           string
		index!:            string
		service!:          string
		transaction_name!: string
		transaction_type!: string
	})

	#apm_latency_indicator: close({
		environment!:      string
		filter?:           string
		index!:            string
		service!:          string
		threshold!:        number
		transaction_name!: string
		transaction_type!: string
	})

	#histogram_custom_indicator: close({
		good?: matchN(1, [_#defs."/$defs/histogram_custom_indicator/$defs/good", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/histogram_custom_indicator/$defs/good"]])
		total?: matchN(1, [_#defs."/$defs/histogram_custom_indicator/$defs/total", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/histogram_custom_indicator/$defs/total"]])
		filter?:          string
		index!:           string
		timestamp_field?: string
	})

	#kql_custom_indicator: close({
		filter?:          string
		good?:            string
		index!:           string
		timestamp_field?: string
		total?:           string
	})

	#metric_custom_indicator: close({
		good?: matchN(1, [_#defs."/$defs/metric_custom_indicator/$defs/good", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/metric_custom_indicator/$defs/good"]])
		total?: matchN(1, [_#defs."/$defs/metric_custom_indicator/$defs/total", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/metric_custom_indicator/$defs/total"]])
		filter?:          string
		index!:           string
		timestamp_field?: string
	})

	#objective: close({
		target!:           number
		timeslice_target?: number
		timeslice_window?: string
	})

	#settings: close({
		frequency?:  string
		sync_delay?: string
	})

	#time_window: close({
		duration!: string
		type!:     string
	})

	#timeslice_metric_indicator: close({
		metric?: matchN(1, [_#defs."/$defs/timeslice_metric_indicator/$defs/metric", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/timeslice_metric_indicator/$defs/metric"]])
		filter?:          string
		index!:           string
		timestamp_field!: string
	})

	_#defs: "/$defs/histogram_custom_indicator/$defs/good": close({
		aggregation!: string
		field!:       string
		filter?:      string
		from?:        number
		to?:          number
	})

	_#defs: "/$defs/histogram_custom_indicator/$defs/total": close({
		aggregation!: string
		field!:       string
		filter?:      string
		from?:        number
		to?:          number
	})

	_#defs: "/$defs/metric_custom_indicator/$defs/good": close({
		metrics?: matchN(1, [_#defs."/$defs/metric_custom_indicator/$defs/good/$defs/metrics", [_, ...] & [..._#defs."/$defs/metric_custom_indicator/$defs/good/$defs/metrics"]])
		equation!: string
	})

	_#defs: "/$defs/metric_custom_indicator/$defs/good/$defs/metrics": close({
		aggregation!: string
		field!:       string
		filter?:      string
		name!:        string
	})

	_#defs: "/$defs/metric_custom_indicator/$defs/total": close({
		metrics?: matchN(1, [_#defs."/$defs/metric_custom_indicator/$defs/total/$defs/metrics", [_, ...] & [..._#defs."/$defs/metric_custom_indicator/$defs/total/$defs/metrics"]])
		equation!: string
	})

	_#defs: "/$defs/metric_custom_indicator/$defs/total/$defs/metrics": close({
		aggregation!: string
		field!:       string
		filter?:      string
		name!:        string
	})

	_#defs: "/$defs/timeslice_metric_indicator/$defs/metric": close({
		metrics?: matchN(1, [_#defs."/$defs/timeslice_metric_indicator/$defs/metric/$defs/metrics", [_, ...] & [..._#defs."/$defs/timeslice_metric_indicator/$defs/metric/$defs/metrics"]])
		comparator!: string
		equation!:   string
		threshold!:  number
	})

	_#defs: "/$defs/timeslice_metric_indicator/$defs/metric/$defs/metrics": close({
		// The aggregation type for this metric. One of: sum, avg, min,
		// max, value_count, percentile, doc_count. Determines which
		// other fields are required:
		aggregation!: string

		// Field to aggregate. Required for aggregations: sum, avg, min,
		// max, value_count, percentile. Must NOT be set for doc_count.
		field?: string

		// Optional KQL filter for this metric. Supported for all
		// aggregations except doc_count.
		filter?: string

		// The unique name for this metric. Used as a variable in the
		// equation field.
		name!: string

		// Percentile value (e.g., 99). Required if aggregation is
		// 'percentile'. Must NOT be set for other aggregations.
		percentile?: number
	})
}
