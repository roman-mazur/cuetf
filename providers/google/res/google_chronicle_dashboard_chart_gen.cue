package res

import "list"

#google_chronicle_dashboard_chart: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_dashboard_chart")
	close({
		chart_layout?: matchN(1, [#chart_layout, list.MaxItems(1) & [...#chart_layout]])
		dashboard_chart!: matchN(1, [#dashboard_chart, list.MaxItems(1) & [_, ...] & [...#dashboard_chart]])
		dashboard_query?: matchN(1, [#dashboard_query, list.MaxItems(1) & [...#dashboard_query]])
		timeouts?: #timeouts

		// The unique identifier of the chart, automatically extracted
		// from the full resource name.
		chart_id?: string
		id?:       string

		// The ID of the Chronicle instance.
		instance!: string

		// The location of the Chronicle instance.
		location!: string

		// The full resource name of the DashboardChart.
		name?: string

		// The parent NativeDashboard resource name, formatted as
		// projects/{project}/locations/{location}/instances/{instance}/nativeDashboards/{dashboard_id}
		native_dashboard?: string
		project?:          string
	})

	#chart_layout: close({
		span_x!:  number
		span_y!:  number
		start_x?: number
		start_y?: number
	})

	#dashboard_chart: close({
		chart_datasource?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/chart_datasource", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/chart_datasource"]])
		drill_down_config?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config"]])
		visualization!: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/dashboard_chart/$defs/visualization"]])

		// Description of the dashboardChart.
		description?: string

		// Display name/Title of the dashboardChart visible to users.
		display_name!: string

		// This checksum is computed by the server.
		etag?: string

		// The resource name of the DashboardChart.
		name?: string

		// Type of tile (e.g., visualization, button, markdown). Possible
		// values: ["TILE_TYPE_UNSPECIFIED", "TILE_TYPE_VISUALIZATION",
		// "TILE_TYPE_BUTTON", "TILE_TYPE_MARKDOWN"]
		tile_type?: string
	})

	#dashboard_query: close({
		input?: matchN(1, [_#defs."/$defs/dashboard_query/$defs/input", list.MaxItems(1) & [..._#defs."/$defs/dashboard_query/$defs/input"]])

		// This checksum is computed by the server.
		etag?: string

		// name of the query.
		name?: string

		// The raw query string.
		query!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/chart_datasource": close({
		// The unique system ID of the query linked to this chart.
		dashboard_query?: string

		// Name(s) of the datasource used in the chart. Available values
		// include:
		// 'UDM', 'ENTITY', 'INGESTION_METRICS', 'RULE_DETECTIONS',
		// 'RULESETS',
		// 'GLOBAL', 'IOC_MATCHES', 'RULES', 'SOAR_CASES',
		// 'SOAR_PLAYBOOKS',
		// 'SOAR_CASE_HISTORY', 'DATA_TABLE', 'INVESTIGATION',
		// 'INVESTIGATION_FEEDBACK'.
		data_sources?: [...string]
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config": close({
		left_drill_downs?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs", [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs"]])
		right_drill_downs?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs", [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs"]])
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs": close({
		custom_settings?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings"]])
		default_settings?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/default_settings", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/default_settings"]])
		display_name!: string
		id!:           string
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings": close({
		external_link?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/external_link", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/external_link"]])
		filter?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/filter", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/filter"]])
		query?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/query", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/query"]])
		left_click_column?: string
		new_tab!:           bool
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/external_link": close({
		description?: string
		link!:        string
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/filter": close({
		dashboard_filters!: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/filter/$defs/dashboard_filters", [_, ...] & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/filter/$defs/dashboard_filters"]])
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/filter/$defs/dashboard_filters": close({
		filter_operator_and_values!: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/filter/$defs/dashboard_filters/$defs/filter_operator_and_values", [_, ...] & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/filter/$defs/dashboard_filters/$defs/filter_operator_and_values"]])
		dashboard_filter_id!: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/filter/$defs/dashboard_filters/$defs/filter_operator_and_values": close({
		field_values?: [...string]

		// Possible values: ["EQUAL", "NOT_EQUAL", "IN", "GREATER_THAN",
		// "GREATER_THAN_OR_EQUAL_TO", "LESS_THAN",
		// "LESS_THAN_OR_EQUAL_TO", "BETWEEN", "PAST", "IS_NULL",
		// "IS_NOT_NULL", "STARTS_WITH", "ENDS_WITH",
		// "DOES_NOT_STARTS_WITH", "DOES_NOT_ENDS_WITH", "NOT_IN",
		// "CONTAINS", "DOES_NOT_CONTAIN"]
		filter_operator?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/custom_settings/$defs/query": close({
		query!: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/left_drill_downs/$defs/default_settings": close({
		enabled!: bool
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs": close({
		custom_settings?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings"]])
		default_settings?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/default_settings", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/default_settings"]])
		display_name!: string
		id!:           string
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings": close({
		external_link?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/external_link", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/external_link"]])
		filter?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/filter", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/filter"]])
		query?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/query", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/query"]])
		new_tab!: bool
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/external_link": close({
		description?: string
		link!:        string
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/filter": close({
		dashboard_filters!: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/filter/$defs/dashboard_filters", [_, ...] & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/filter/$defs/dashboard_filters"]])
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/filter/$defs/dashboard_filters": close({
		filter_operator_and_values!: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/filter/$defs/dashboard_filters/$defs/filter_operator_and_values", [_, ...] & [..._#defs."/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/filter/$defs/dashboard_filters/$defs/filter_operator_and_values"]])
		dashboard_filter_id!: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/filter/$defs/dashboard_filters/$defs/filter_operator_and_values": close({
		field_values?: [...string]

		// Possible values: ["EQUAL", "NOT_EQUAL", "IN", "GREATER_THAN",
		// "GREATER_THAN_OR_EQUAL_TO", "LESS_THAN",
		// "LESS_THAN_OR_EQUAL_TO", "BETWEEN", "PAST", "IS_NULL",
		// "IS_NOT_NULL", "STARTS_WITH", "ENDS_WITH",
		// "DOES_NOT_STARTS_WITH", "DOES_NOT_ENDS_WITH", "NOT_IN",
		// "CONTAINS", "DOES_NOT_CONTAIN"]
		filter_operator?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/custom_settings/$defs/query": close({
		query!: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/drill_down_config/$defs/right_drill_downs/$defs/default_settings": close({
		enabled!: bool
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization": close({
		button?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/button", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/button"]])
		column_defs?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/column_defs", [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/column_defs"]])
		google_maps_config?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/google_maps_config", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/google_maps_config"]])
		legends?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/legends", [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/legends"]])
		markdown?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/markdown", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/markdown"]])
		series?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series", [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series"]])
		table_config?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/table_config", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/table_config"]])
		tooltip?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/tooltip", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/tooltip"]])
		visual_maps?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/visual_maps", [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/visual_maps"]])
		x_axes?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/x_axes", [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/x_axes"]])
		y_axes?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/y_axes", [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/y_axes"]])
		grouping_type?: string
		series_column?: [...string]
		threshold_coloring_enabled?: bool
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/button": close({
		properties?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/button/$defs/properties", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/button/$defs/properties"]])
		description?: string
		hyperlink!:   string
		label!:       string
		new_tab?:     bool
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/button/$defs/properties": close({
		// Possible values: ["BUTTON_STYLE_UNSPECIFIED",
		// "BUTTON_STYLE_FILLED", "BUTTON_STYLE_OUTLINED",
		// "BUTTON_STYLE_TRANSPARENT"]
		button_style?: string
		color?:        string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/column_defs": close({
		field?:  string
		header?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/google_maps_config": close({
		data_settings?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/google_maps_config/$defs/data_settings", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/google_maps_config/$defs/data_settings"]])
		map_position?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/google_maps_config/$defs/map_position", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/google_maps_config/$defs/map_position"]])
		point_settings?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/google_maps_config/$defs/point_settings", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/google_maps_config/$defs/point_settings"]])

		// Possible values: ["PLOT_MODE_UNSPECIFIED", "PLOT_MODE_POINTS",
		// "PLOT_MODE_HEATMAP", "PLOT_MODE_BOTH"]
		plot_mode?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/google_maps_config/$defs/data_settings": close({
		count_column?:     string
		latitude_column?:  string
		longitude_column?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/google_maps_config/$defs/map_position": close({
		fit_data?:         bool
		latitude_value?:   number
		longitude_value?:  number
		zoom_scale_value?: number
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/google_maps_config/$defs/point_settings": close({
		color?: string

		// Possible values: ["POINT_SIZE_TYPE_UNSPECIFIED",
		// "POINT_SIZE_TYPE_FIXED",
		// "POINT_SIZE_TYPE_PROPORTIONAL_TO_SIZE"]
		point_size_type?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/legends": close({
		bottom?: number
		id?:     string
		left?:   number

		// Possible values: ["AUTO", "LEFT", "RIGHT"]
		legend_align?: string

		// Possible values: ["VERTICAL", "HORIZONTAL"]
		legend_orient?: string
		padding?: [...number]
		right?:   number
		show?:    bool
		top?:     number
		z?:       number
		z_level?: number
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/markdown": close({
		properties?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/markdown/$defs/properties", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/markdown/$defs/properties"]])
		content!: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/markdown/$defs/properties": close({
		background_color?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series": close({
		area_style?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/area_style", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/area_style"]])
		data_label?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/data_label", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/data_label"]])
		encode?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/encode", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/encode"]])
		gauge_config?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/gauge_config", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/gauge_config"]])
		item_colors?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/item_colors", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/item_colors"]])
		item_style?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/item_style", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/item_style"]])
		metric_trend_config?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/metric_trend_config", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/metric_trend_config"]])
		field?: string
		label?: string
		radius?: [...string]

		// User specified series label.
		series_name?: string

		// Possible values: ["SAMESIGN", "ALL", "POSITIVE", "NEGATIVE"]
		series_stack_strategy?: string

		// Possible values: ["LINE", "BAR", "PIE", "TEXT", "MAP", "GAUGE",
		// "SCATTERPLOT"]
		series_type?:         string
		series_unique_value?: string
		show_background?:     bool
		show_symbol?:         bool
		stack?:               string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/area_style": close({
		color?:           string
		opacity?:         number
		origin?:          string
		shadow_blur?:     number
		shadow_color?:    string
		shadow_offset_x?: number
		shadow_offset_y?: number
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/data_label": close({
		// Whether to show data label.
		show?: bool
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/encode": close({
		item_name?: string
		value?:     string
		x?:         string
		y?:         string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/gauge_config": close({
		base_value?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/gauge_config/$defs/base_value", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/gauge_config/$defs/base_value"]])
		limit_value?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/gauge_config/$defs/limit_value", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/gauge_config/$defs/limit_value"]])
		threshold_values?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/gauge_config/$defs/threshold_values", [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/gauge_config/$defs/threshold_values"]])
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/gauge_config/$defs/base_value": close({
		color?: string
		value?: number
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/gauge_config/$defs/limit_value": close({
		color?: string
		value?: number
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/gauge_config/$defs/threshold_values": close({
		color?: string
		value?: number
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/item_colors": close({
		colors?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/item_colors/$defs/colors", [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/item_colors/$defs/colors"]])
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/item_colors/$defs/colors": close({
		value?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/item_colors/$defs/colors/$defs/value", list.MaxItems(1) & [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/item_colors/$defs/colors/$defs/value"]])
		key?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/item_colors/$defs/colors/$defs/value": close({
		color?: string
		label?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/item_style": close({
		border_color?: string
		border_width?: number
		color?:        string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/series/$defs/metric_trend_config": close({
		// Possible values: ["METRIC_DISPLAY_TREND_UNSPECIFIED",
		// "METRIC_DISPLAY_TREND_ABSOLUTE_VALUE",
		// "METRIC_DISPLAY_TREND_PERCENTAGE",
		// "METRIC_DISPLAY_TREND_ABSOLUTE_VALUE_AND_PERCENTAGE"]
		metric_display_trend?: string

		// Possible values: ["METRIC_FORMAT_UNSPECIFIED",
		// "METRIC_FORMAT_NUMBER", "METRIC_FORMAT_PLAIN_TEXT"]
		metric_format?: string

		// Possible values: ["METRIC_TREND_TYPE_UNSPECIFIED",
		// "METRIC_TREND_TYPE_REGULAR", "METRIC_TREND_TYPE_INVERSE"]
		metric_trend_type?: string
		show_metric_trend?: bool
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/table_config": close({
		column_render_type_settings?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/table_config/$defs/column_render_type_settings", [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/table_config/$defs/column_render_type_settings"]])
		column_tooltip_settings?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/table_config/$defs/column_tooltip_settings", [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/table_config/$defs/column_tooltip_settings"]])
		enable_text_wrap?: bool
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/table_config/$defs/column_render_type_settings": close({
		// Possible values: ["RENDER_TYPE_UNSPECIFIED",
		// "RENDER_TYPE_TEXT", "RENDER_TYPE_ICON",
		// "RENDER_TYPE_ICON_AND_TEXT"]
		column_render_type?: string
		field?:              string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/table_config/$defs/column_tooltip_settings": close({
		cell_tooltip_text?:   string
		field!:               string
		header_tooltip_text?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/tooltip": close({
		show?: bool

		// Possible values: ["TOOLTIP_TRIGGER_UNSPECIFIED",
		// "TOOLTIP_TRIGGER_NONE", "TOOLTIP_TRIGGER_ITEM",
		// "TOOLTIP_TRIGGER_AXIS"]
		tooltip_trigger?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/visual_maps": close({
		pieces?: matchN(1, [_#defs."/$defs/dashboard_chart/$defs/visualization/$defs/visual_maps/$defs/pieces", [..._#defs."/$defs/dashboard_chart/$defs/visualization/$defs/visual_maps/$defs/pieces"]])

		// Possible values: ["VISUAL_MAP_TYPE_UNSPECIFIED", "CONTINUOUS",
		// "PIECEWISE"]
		visual_map_type?: string
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/visual_maps/$defs/pieces": close({
		color?: string
		label?: string
		max?:   number
		min?:   number
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/x_axes": close({
		// Possible values: ["VALUE", "CATEGORY", "TIME", "LOG"]
		axis_type?:    string
		display_name?: string
		max?:          number
		min?:          number
	})

	_#defs: "/$defs/dashboard_chart/$defs/visualization/$defs/y_axes": close({
		// Possible values: ["VALUE", "CATEGORY", "TIME", "LOG"]
		axis_type?:    string
		display_name?: string
		max?:          number
		min?:          number
	})

	_#defs: "/$defs/dashboard_query/$defs/input": close({
		relative_time?: matchN(1, [_#defs."/$defs/dashboard_query/$defs/input/$defs/relative_time", list.MaxItems(1) & [..._#defs."/$defs/dashboard_query/$defs/input/$defs/relative_time"]])
		time_window?: matchN(1, [_#defs."/$defs/dashboard_query/$defs/input/$defs/time_window", list.MaxItems(1) & [..._#defs."/$defs/dashboard_query/$defs/input/$defs/time_window"]])
	})

	_#defs: "/$defs/dashboard_query/$defs/input/$defs/relative_time": close({
		start_time_val!: string

		// The time unit for the relative range. Possible values:
		// ["SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "YEAR"]
		time_unit!: string
	})

	_#defs: "/$defs/dashboard_query/$defs/input/$defs/time_window": close({
		end_time?:   string
		start_time?: string
	})
}
