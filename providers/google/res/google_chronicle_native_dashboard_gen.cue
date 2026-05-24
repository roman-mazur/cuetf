package res

import "list"

#google_chronicle_native_dashboard: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_native_dashboard")
	close({
		charts?: matchN(1, [#charts, [...#charts]])
		filters?: matchN(1, [#filters, [...#filters]])
		timeouts?: #timeouts

		// The access level of the dashboard.
		// Possible values:
		// DASHBOARD_PRIVATE
		// DASHBOARD_PUBLIC
		access?: string

		// The creation time of the dashboard.
		create_time?: string

		// The ID of the user who created the dashboard.
		create_user_id?: string

		// The unique ID of the Dashboard.
		dashboard_id?: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// A description of the dashboard.
		description?: string

		// The display name/title of the dashboard visible to users.
		display_name!: string

		// Server-computed checksum for optimistic concurrency control,
		// sent on update and delete requests.
		etag?: string

		// The server-generated fingerprint of the dashboard definition.
		fingerprint?: string
		id?:          string

		// The ID of the Chronicle instance.
		instance!: string

		// Whether the dashboard is pinned by the user.
		is_pinned?: bool

		// The time when this dashboard was last viewed.
		last_viewed_time?: string

		// The location of the Chronicle instance.
		location!: string

		// The full resource name of the dashboard.
		name?:    string
		project?: string

		// The type of dashboard.
		// Possible values:
		// CURATED, PRIVATE, PUBLIC, CUSTOM, MARKETPLACE
		type?: string

		// The time when the dashboard was last edited.
		update_time?: string

		// The ID of the user who last edited the dashboard.
		update_user_id?: string
	})

	#charts: close({
		chart_layout?: matchN(1, [_#defs."/$defs/charts/$defs/chart_layout", list.MaxItems(1) & [..._#defs."/$defs/charts/$defs/chart_layout"]])

		// The resource name of the associated DashboardChart.
		dashboard_chart?: string

		// List of dashboard filter IDs applied to this chart.
		filters_ids?: [...string]
	})

	#filters: close({
		filter_operator_and_field_values?: matchN(1, [_#defs."/$defs/filters/$defs/filter_operator_and_field_values", [..._#defs."/$defs/filters/$defs/filter_operator_and_field_values"]])

		// The IDs of charts that this filter applies to.
		chart_ids?: [...string]

		// The data source for the filter.
		// Possible values:
		// UDM, ENTITY, INGESTION_METRICS, RULE_DETECTIONS, RULESETS,
		// GLOBAL,
		// IOC_MATCHES, RULES, SOAR_CASES, SOAR_PLAYBOOKS,
		// SOAR_CASE_HISTORY,
		// DATA_TABLE, INVESTIGATION, INVESTIGATION_FEEDBACK
		data_source?: string

		// The display name of the filter.
		display_name?: string

		// The UDM field path being filtered.
		field_path?: string

		// The unique ID of the filter.
		id?: string

		// Whether the filter is mandatory for the dashboard consumer.
		is_mandatory?: bool

		// Whether the filter is a standard time range filter.
		is_standard_time_range_filter?: bool

		// Whether the standard time range filter is currently enabled.
		is_standard_time_range_filter_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/charts/$defs/chart_layout": close({
		// The number of columns the chart spans.
		span_x!: number

		// The number of rows the chart spans.
		span_y!: number

		// The starting X coordinate.
		start_x?: number

		// The starting Y coordinate.
		start_y?: number
	})

	_#defs: "/$defs/filters/$defs/filter_operator_and_field_values": close({
		// The values for the modifier. All operators should have a single
		// value other than 'IN' and 'BETWEEN'.
		field_values?: [...string]

		// The operator to apply to the field. Possible values: ["EQUAL",
		// "NOT_EQUAL", "IN", "GREATER_THAN", "GREATER_THAN_OR_EQUAL_TO",
		// "LESS_THAN", "LESS_THAN_OR_EQUAL_TO", "BETWEEN", "PAST",
		// "IS_NULL", "IS_NOT_NULL", "STARTS_WITH", "ENDS_WITH",
		// "DOES_NOT_STARTS_WITH", "DOES_NOT_ENDS_WITH", "NOT_IN",
		// "CONTAINS", "DOES_NOT_CONTAIN"]
		filter_operator?: string
	})
}
