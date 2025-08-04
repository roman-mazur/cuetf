package res

import "list"

#elasticstack_kibana_slo: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_slo")
	close({
		budgeting_method!: string
		apm_availability_indicator?: matchN(1, [#apm_availability_indicator, list.MaxItems(1) & [...#apm_availability_indicator]])
		description!: string
		group_by?: [...string]
		apm_latency_indicator?: matchN(1, [#apm_latency_indicator, list.MaxItems(1) & [...#apm_latency_indicator]])
		id?:   string
		name!: string
		histogram_custom_indicator?: matchN(1, [#histogram_custom_indicator, list.MaxItems(1) & [...#histogram_custom_indicator]])
		slo_id?:   string
		space_id?: string
		kql_custom_indicator?: matchN(1, [#kql_custom_indicator, list.MaxItems(1) & [...#kql_custom_indicator]])
		metric_custom_indicator?: matchN(1, [#metric_custom_indicator, list.MaxItems(1) & [...#metric_custom_indicator]])
		objective?: matchN(1, [#objective, list.MaxItems(1) & [_, ...] & [...#objective]])
		tags?: [...string]
		settings?: matchN(1, [#settings, list.MaxItems(1) & [...#settings]])
		time_window?: matchN(1, [#time_window, list.MaxItems(1) & [_, ...] & [...#time_window]])
		timeslice_metric_indicator?: matchN(1, [#timeslice_metric_indicator, list.MaxItems(1) & [...#timeslice_metric_indicator]])
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
		aggregation!: string
		field?:       string
		filter?:      string
		name!:        string
		percentile?:  number
	})
}
