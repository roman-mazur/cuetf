package res

import "list"

google_chronicle_big_query_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_big_query_export")
	close({
		entity_graph_settings?: matchN(1, [#entity_graph_settings, list.MaxItems(1) & [...#entity_graph_settings]])
		ioc_matches_settings?: matchN(1, [#ioc_matches_settings, list.MaxItems(1) & [...#ioc_matches_settings]])
		rule_detections_settings?: matchN(1, [#rule_detections_settings, list.MaxItems(1) & [...#rule_detections_settings]])
		timeouts?: #timeouts
		udm_events_aggregates_settings?: matchN(1, [#udm_events_aggregates_settings, list.MaxItems(1) & [...#udm_events_aggregates_settings]])
		udm_events_settings?: matchN(1, [#udm_events_settings, list.MaxItems(1) & [...#udm_events_settings]])

		// The BigQueryExportPackage entitled for the Chronicle instance. Possible
		// values: ["BIG_QUERY_EXPORT_PACKAGE_BYOBQ",
		// "BIG_QUERY_EXPORT_PACKAGE_ADVANCED"]
		big_query_export_package?: string
		id?:                       string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		instance!: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. The resource name of the BigQueryExport.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/bigQueryExport
		name?: string

		// Whether the BigQueryExport has been provisioned for the Chronicle instance.
		provisioned?: bool
		project?:     string
	})

	#entity_graph_settings: close({
		// The data freshness of the given export which represents the time bucket at
		// which the latest event was exported.
		data_freshness_time?: string

		// The stored data volume of all the exports.
		data_volume?: string

		// Whether the data source is enabled for export.
		enabled!: bool

		// The latest export job state.
		latest_export_job_state?: string

		// The retention period for the data source in days.
		retention_days!: number
	})

	#ioc_matches_settings: close({
		// The data freshness of the given export which represents the time bucket at
		// which the latest event was exported.
		data_freshness_time?: string

		// The stored data volume of all the exports.
		data_volume?: string

		// Whether the data source is enabled for export.
		enabled!: bool

		// The latest export job state.
		latest_export_job_state?: string

		// The retention period for the data source in days.
		retention_days!: number
	})

	#rule_detections_settings: close({
		// The data freshness of the given export which represents the time bucket at
		// which the latest event was exported.
		data_freshness_time?: string

		// The stored data volume of all the exports.
		data_volume?: string

		// Whether the data source is enabled for export.
		enabled!: bool

		// The latest export job state.
		latest_export_job_state?: string

		// The retention period for the data source in days.
		retention_days!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#udm_events_aggregates_settings: close({
		// The data freshness of the given export which represents the time bucket at
		// which the latest event was exported.
		data_freshness_time?: string

		// The stored data volume of all the exports.
		data_volume?: string

		// Whether the data source is enabled for export.
		enabled!: bool

		// The latest export job state.
		latest_export_job_state?: string

		// The retention period for the data source in days.
		retention_days!: number
	})

	#udm_events_settings: close({
		// The data freshness of the given export which represents the time bucket at
		// which the latest event was exported.
		data_freshness_time?: string

		// The stored data volume of all the exports.
		data_volume?: string

		// Whether the data source is enabled for export.
		enabled!: bool

		// The latest export job state.
		latest_export_job_state?: string

		// The retention period for the data source in days.
		retention_days!: number
	})
}
