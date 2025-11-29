package res

import "list"

#google_bigquery_analytics_hub_listing_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_analytics_hub_listing_subscription")
	close({
		// Commercial info metadata for this subscription. This is set if
		// this is a commercial subscription i.e. if this subscription
		// was created from subscribing to a commercial listing.
		commercial_info?: [...close({
			cloud_marketplace?: [...close({
				order?: string
			})]
		})]

		// Timestamp when the subscription was created.
		creation_time?: string

		// The ID of the data exchange. Must contain only Unicode letters,
		// numbers (0-9), underscores (_). Should not use characters that
		// require URL-escaping, or characters outside of ASCII, spaces.
		data_exchange_id!: string
		id?:               string

		// Timestamp when the subscription was last modified.
		last_modify_time?: string

		// Output only. Map of listing resource names to associated linked
		// resource,
		// e.g. projects/123/locations/US/dataExchanges/456/listings/789
		// -> projects/123/datasets/my_dataset
		linked_dataset_map?: [...close({
			linked_dataset?: string
			listing?:        string
			resource_name?:  string
		})]

		// Output only. Linked resources created in the subscription. Only
		// contains values if state = STATE_ACTIVE.
		linked_resources?: [...close({
			linked_dataset?: string
			listing?:        string
		})]

		// The ID of the listing. Must contain only Unicode letters,
		// numbers (0-9), underscores (_). Should not use characters that
		// require URL-escaping, or characters outside of ASCII, spaces.
		listing_id!: string

		// The name of the location of the data exchange. Distinct from
		// the location of the destination data set.
		location!: string

		// Output only. By default, false. If true, the Subscriber agreed
		// to the email sharing mandate that is enabled for Listing.
		log_linked_dataset_query_user_email?: bool

		// The resource name of the subscription. e.g.
		// "projects/myproject/locations/US/subscriptions/123"
		name?: string

		// Display name of the project of this subscription.
		organization_display_name?: string
		destination_dataset!: matchN(1, [#destination_dataset, list.MaxItems(1) & [_, ...] & [...#destination_dataset]])
		timeouts?: #timeouts

		// Organization of the project this subscription belongs to.
		organization_id?: string
		project?:         string

		// Listing shared asset type.
		resource_type?: string

		// Current state of the subscription.
		state?: string

		// Email of the subscriber.
		subscriber_contact?: string

		// The subscription id used to reference the subscription.
		subscription_id?: string
	})

	#destination_dataset: close({
		// A user-friendly description of the dataset.
		description?: string

		// A descriptive name for the dataset.
		friendly_name?: string

		// The labels associated with this dataset. You can use these to
		// organize and group your datasets.
		labels?: [string]: string
		dataset_reference!: matchN(1, [_#defs."/$defs/destination_dataset/$defs/dataset_reference", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/destination_dataset/$defs/dataset_reference"]])

		// The geographic location where the dataset should reside.
		// See https://cloud.google.com/bigquery/docs/locations for
		// supported locations.
		location!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/destination_dataset/$defs/dataset_reference": close({
		// A unique ID for this dataset, without the project name. The ID
		// must contain only letters (a-z, A-Z), numbers (0-9), or
		// underscores (_). The maximum length is 1,024 characters.
		dataset_id!: string

		// The ID of the project containing this dataset.
		project_id!: string
	})
}
