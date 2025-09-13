package res

import "list"

#google_bigquery_analytics_hub_listing: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_analytics_hub_listing")
	close({
		// If true, the listing is only available to get the resource
		// metadata. Listing is non subscribable.
		allow_only_metadata_sharing?: bool

		// Categories of the listing. Up to two categories are allowed.
		categories?: [...string]

		// Commercial info contains the information about the commercial
		// data products associated with the listing.
		commercial_info?: [...close({
			cloud_marketplace?: [...close({
				commercial_state?: string
				service?:          string
			})]
		})]

		// The ID of the data exchange. Must contain only Unicode letters,
		// numbers (0-9), underscores (_). Should not use characters that
		// require URL-escaping, or characters outside of ASCII, spaces.
		data_exchange_id!: string

		// If the listing is commercial then this field must be set to
		// true, otherwise a failure is thrown. This acts as a safety
		// guard to avoid deleting commercial listings accidentally.
		delete_commercial?: bool

		// Short description of the listing. The description must not
		// contain Unicode non-characters and C0 and C1 control codes
		// except tabs (HT), new lines (LF), carriage returns (CR), and
		// page breaks (FF).
		description?: string

		// Specifies the type of discovery on the discovery page. Cannot
		// be set for a restricted listing. Note that this does not
		// control the visibility of the exchange/listing which is
		// defined by IAM permission. Possible values:
		// ["DISCOVERY_TYPE_PRIVATE", "DISCOVERY_TYPE_PUBLIC"]
		discovery_type?: string

		// Human-readable display name of the listing. The display name
		// must contain only Unicode letters, numbers (0-9), underscores
		// (_), dashes (-), spaces ( ), ampersands (&) and can't start or
		// end with spaces.
		display_name!: string

		// Documentation describing the listing.
		documentation?: string

		// Base64 encoded image representing the listing.
		icon?: string
		id?:   string

		// The ID of the listing. Must contain only Unicode letters,
		// numbers (0-9), underscores (_). Should not use characters that
		// require URL-escaping, or characters outside of ASCII, spaces.
		listing_id!: string
		bigquery_dataset?: matchN(1, [#bigquery_dataset, list.MaxItems(1) & [...#bigquery_dataset]])
		data_provider?: matchN(1, [#data_provider, list.MaxItems(1) & [...#data_provider]])
		publisher?: matchN(1, [#publisher, list.MaxItems(1) & [...#publisher]])
		pubsub_topic?: matchN(1, [#pubsub_topic, list.MaxItems(1) & [...#pubsub_topic]])
		restricted_export_config?: matchN(1, [#restricted_export_config, list.MaxItems(1) & [...#restricted_export_config]])
		timeouts?: #timeouts

		// The name of the location this data exchange listing.
		location!: string

		// If true, subscriber email logging is enabled and all queries on
		// the linked dataset will log the email address of the querying
		// user. Once enabled, this setting cannot be turned off.
		log_linked_dataset_query_user_email?: bool

		// The resource name of the listing. e.g.
		// "projects/myproject/locations/US/dataExchanges/123/listings/456"
		name?: string

		// Email or URL of the primary point of contact of the listing.
		primary_contact?: string
		project?:         string

		// Email or URL of the request access of the listing. Subscribers
		// can use this reference to request access.
		request_access?: string

		// Current state of the listing.
		state?: string
	})

	#bigquery_dataset: close({
		selected_resources?: matchN(1, [_#defs."/$defs/bigquery_dataset/$defs/selected_resources", [..._#defs."/$defs/bigquery_dataset/$defs/selected_resources"]])

		// Resource name of the dataset source for this listing. e.g.
		// projects/myproject/datasets/123
		dataset!: string
	})

	#data_provider: close({
		// Name of the data provider.
		name!: string

		// Email or URL of the data provider.
		primary_contact?: string
	})

	#publisher: close({
		// Name of the listing publisher.
		name!: string

		// Email or URL of the listing publisher.
		primary_contact?: string
	})

	#pubsub_topic: close({
		// Region hint on where the data might be published. Data affinity
		// regions are modifiable.
		// See https://cloud.google.com/about/locations for full listing
		// of possible Cloud regions.
		data_affinity_regions?: [...string]

		// Resource name of the Pub/Sub topic source for this listing.
		// e.g. projects/myproject/topics/topicId
		topic!: string
	})

	#restricted_export_config: close({
		// If true, enable restricted export.
		enabled?: bool

		// If true, restrict direct table access(read api/tabledata.list)
		// on linked table.
		restrict_direct_table_access?: bool

		// If true, restrict export of query result derived from
		// restricted linked dataset table.
		restrict_query_result?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/bigquery_dataset/$defs/selected_resources": close({
		// Format: For table:
		// projects/{projectId}/datasets/{datasetId}/tables/{tableId}
		// Example:"projects/test_project/datasets/test_dataset/tables/test_table"
		table?: string
	})
}
