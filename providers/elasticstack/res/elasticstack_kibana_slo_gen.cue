package res

elasticstack_kibana_slo: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_slo")
	close({
		apm_availability_indicator?: matchN(1, [#apm_availability_indicator, [...#apm_availability_indicator]])
		apm_latency_indicator?: matchN(1, [#apm_latency_indicator, [...#apm_latency_indicator]])

		// Whether the SLO is enabled in Kibana.
		enabled?: bool

		// Optional group by fields to use to generate an SLO per distinct value.
		group_by?: [...string]
		histogram_custom_indicator?: matchN(1, [#histogram_custom_indicator, [...#histogram_custom_indicator]])

		// Internal identifier of the resource.
		id?: string
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])
		kql_custom_indicator?: matchN(1, [#kql_custom_indicator, [...#kql_custom_indicator]])
		metric_custom_indicator?: matchN(1, [#metric_custom_indicator, [...#metric_custom_indicator]])

		// The name of the SLO.
		name!: string
		objective?: matchN(1, [#objective, [...#objective]])
		settings?: #settings

		// An ID (8 to 48 characters) that contains only letters, numbers, hyphens, and
		// underscores. If omitted, a UUIDv1 will be generated server-side.
		slo_id?: string

		// An identifier for the space. If space_id is not provided, the default space is used.
		space_id?: string

		// The tags for the SLO.
		tags?: [...string]
		time_window?: matchN(1, [#time_window, [...#time_window]])
		timeslice_metric_indicator?: matchN(1, [#timeslice_metric_indicator, [...#timeslice_metric_indicator]])

		// Links to related assets (for example dashboards) returned and managed with the SLO.
		artifacts?: close({
			// Dashboard references attached to the SLO.
			dashboards?: matchN(1, [close({
				// Dashboard saved object id.
				id!: string
			}), [...close({
				// Dashboard saved object id.
				id!: string
			})]])
		})

		// An `occurrences` budgeting method uses the number of good and total events
		// during the time window. A `timeslices` budgeting method uses the number of
		// good slices and total slices during the time window. A slice is an arbitrary
		// time window (smaller than the overall SLO time window) that is either
		// considered good or bad, calculated from the timeslice threshold and the
		// ratio of good over total events that happened during the slice window. A
		// budgeting method is required and must be either occurrences or timeslices.
		budgeting_method!: string
		timeouts?: close({
			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			create?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
			// applicable if changes are saved into state before the destroy operation
			// occurs.
			delete?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Read operations occur during any refresh or
			// planning operation when refresh is enabled.
			read?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			update?: string
		})

		// A description for the SLO.
		description!: string
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
		good?: matchN(1, [_#defs."/$defs/histogram_custom_indicator/$defs/good", [..._#defs."/$defs/histogram_custom_indicator/$defs/good"]])
		total?: matchN(1, [_#defs."/$defs/histogram_custom_indicator/$defs/total", [..._#defs."/$defs/histogram_custom_indicator/$defs/total"]])

		// Optional data view id to use for this indicator.
		data_view_id?:    string
		filter?:          string
		index!:           string
		timestamp_field?: string
	})

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

		// A list of paths to CA certificates to validate the certificate presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform provider will point
		// to, this must include the http(s) schema and port number.
		endpoints?: [...string]

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})

	#kql_custom_indicator: close({
		// Optional data view id to use for this indicator.
		data_view_id?: string
		filter?:       string

		// Object-form KQL (kqlQuery and filters). Mutually exclusive with the legacy
		// string attribute for the same logical field. Use the attribute form in
		// Terraform (e.g. `filter_kql = { kql_query = "..." }`), not a nested
		// `filter_kql { ... }` block.
		filter_kql?: close({
			// Optional Kibana filter objects (query JSON) accompanying the KQL object form.
			filters?: matchN(1, [close({
				// Filter query as a JSON-encoded ES Query DSL object. Accepts any valid ES
				// Query DSL (regexp, wildcard, bool, range, etc.). Use jsonencode({...}) to
				// construct the value.
				query?: string
			}), [...close({
				// Filter query as a JSON-encoded ES Query DSL object. Accepts any valid ES
				// Query DSL (regexp, wildcard, bool, range, etc.). Use jsonencode({...}) to
				// construct the value.
				query?: string
			})]])

			// KQL query string when using the object form.
			kql_query?: string
		})
		good?: string

		// Object-form KQL (kqlQuery and filters). Mutually exclusive with the legacy
		// string attribute for the same logical field. Use the attribute form in
		// Terraform (e.g. `good_kql = { kql_query = "..." }`), not a nested `good_kql
		// { ... }` block.
		good_kql?: close({
			// Optional Kibana filter objects (query JSON) accompanying the KQL object form.
			filters?: matchN(1, [close({
				// Filter query as a JSON-encoded ES Query DSL object. Accepts any valid ES
				// Query DSL (regexp, wildcard, bool, range, etc.). Use jsonencode({...}) to
				// construct the value.
				query?: string
			}), [...close({
				// Filter query as a JSON-encoded ES Query DSL object. Accepts any valid ES
				// Query DSL (regexp, wildcard, bool, range, etc.). Use jsonencode({...}) to
				// construct the value.
				query?: string
			})]])

			// KQL query string when using the object form.
			kql_query?: string
		})
		index!:           string
		timestamp_field?: string
		total?:           string

		// Object-form KQL (kqlQuery and filters). Mutually exclusive with the legacy
		// string attribute for the same logical field. Use the attribute form in
		// Terraform (e.g. `total_kql = { kql_query = "..." }`), not a nested
		// `total_kql { ... }` block.
		total_kql?: close({
			// Optional Kibana filter objects (query JSON) accompanying the KQL object form.
			filters?: matchN(1, [close({
				// Filter query as a JSON-encoded ES Query DSL object. Accepts any valid ES
				// Query DSL (regexp, wildcard, bool, range, etc.). Use jsonencode({...}) to
				// construct the value.
				query?: string
			}), [...close({
				// Filter query as a JSON-encoded ES Query DSL object. Accepts any valid ES
				// Query DSL (regexp, wildcard, bool, range, etc.). Use jsonencode({...}) to
				// construct the value.
				query?: string
			})]])

			// KQL query string when using the object form.
			kql_query?: string
		})
	})

	#metric_custom_indicator: close({
		good?: matchN(1, [_#defs."/$defs/metric_custom_indicator/$defs/good", [..._#defs."/$defs/metric_custom_indicator/$defs/good"]])
		total?: matchN(1, [_#defs."/$defs/metric_custom_indicator/$defs/total", [..._#defs."/$defs/metric_custom_indicator/$defs/total"]])

		// Optional data view id to use for this indicator.
		data_view_id?:    string
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
		frequency?: string

		// Prevents the underlying ES transform from attempting to backfill data on
		// start, which can sometimes be resource-intensive or time-consuming and
		// unnecessary
		prevent_initial_backfill?: bool
		sync_delay?:               string

		// The date field used to identify new documents in the source. When
		// unspecified, the indicator timestamp field is used.
		sync_field?: string
	})

	#time_window: close({
		duration!: string
		type!:     string
	})

	#timeslice_metric_indicator: close({
		metric?: matchN(1, [_#defs."/$defs/timeslice_metric_indicator/$defs/metric", [..._#defs."/$defs/timeslice_metric_indicator/$defs/metric"]])

		// Optional data view id to use for this indicator.
		data_view_id?:    string
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
		metrics?: matchN(1, [_#defs."/$defs/metric_custom_indicator/$defs/good/$defs/metrics", [..._#defs."/$defs/metric_custom_indicator/$defs/good/$defs/metrics"]])
		equation!: string
	})

	_#defs: "/$defs/metric_custom_indicator/$defs/good/$defs/metrics": close({
		aggregation!: string

		// Field to aggregate. Required for all aggregations except doc_count. Must NOT
		// be set for doc_count.
		field?:  string
		filter?: string
		name!:   string
	})

	_#defs: "/$defs/metric_custom_indicator/$defs/total": close({
		metrics?: matchN(1, [_#defs."/$defs/metric_custom_indicator/$defs/total/$defs/metrics", [..._#defs."/$defs/metric_custom_indicator/$defs/total/$defs/metrics"]])
		equation!: string
	})

	_#defs: "/$defs/metric_custom_indicator/$defs/total/$defs/metrics": close({
		aggregation!: string

		// Field to aggregate. Required for all aggregations except doc_count. Must NOT
		// be set for doc_count.
		field?:  string
		filter?: string
		name!:   string
	})

	_#defs: "/$defs/timeslice_metric_indicator/$defs/metric": close({
		metrics?: matchN(1, [_#defs."/$defs/timeslice_metric_indicator/$defs/metric/$defs/metrics", [..._#defs."/$defs/timeslice_metric_indicator/$defs/metric/$defs/metrics"]])
		comparator!: string
		equation!:   string
		threshold!:  number
	})

	_#defs: "/$defs/timeslice_metric_indicator/$defs/metric/$defs/metrics": close({
		// The aggregation type for this metric (kbapi timeslice metric union: no
		// value_count). One of: sum, avg, min, max, last_value, cardinality,
		// std_deviation, percentile, doc_count. Determines which other fields are
		// required.
		aggregation!: string

		// Field to aggregate. Required for sum, avg, min, max, last_value, cardinality,
		// std_deviation, percentile. Must NOT be set for doc_count.
		field?: string

		// Optional KQL filter for this metric. Supported for all timeslice metric
		// aggregation kinds, including doc_count, per the Kibana SLO API.
		filter?: string

		// The unique name for this metric. Used as a variable in the equation field.
		// Must be a single letter A–Z.
		name!: string

		// Percentile value (e.g., 99). Required if aggregation is 'percentile'. Must
		// NOT be set for other aggregations.
		percentile?: number
	})
}
