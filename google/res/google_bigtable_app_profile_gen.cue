package res

import "list"

#google_bigtable_app_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigtable_app_profile")
	close({
		// The unique name of the app profile in the form
		// '[_a-zA-Z0-9][-_.a-zA-Z0-9]*'.
		app_profile_id!: string

		// Long form description of the use case for this app profile.
		description?: string
		id?:          string

		// If true, ignore safety checks when deleting/updating the app
		// profile.
		ignore_warnings?: bool

		// The name of the instance to create the app profile within.
		instance?: string

		// The set of clusters to route to. The order is ignored; clusters
		// will be tried in order of distance. If left empty, all
		// clusters are eligible.
		multi_cluster_routing_cluster_ids?: [...string]
		data_boost_isolation_read_only?: matchN(1, [#data_boost_isolation_read_only, list.MaxItems(1) & [...#data_boost_isolation_read_only]])

		// If true, read/write requests are routed to the nearest cluster
		// in the instance, and will fail over to the nearest cluster
		// that is available
		// in the event of transient errors or delays. Clusters in a
		// region are considered equidistant. Choosing this option
		// sacrifices read-your-writes
		// consistency to improve availability.
		multi_cluster_routing_use_any?: bool
		single_cluster_routing?: matchN(1, [#single_cluster_routing, list.MaxItems(1) & [...#single_cluster_routing]])
		standard_isolation?: matchN(1, [#standard_isolation, list.MaxItems(1) & [...#standard_isolation]])
		timeouts?: #timeouts

		// The unique name of the requested app profile. Values are of the
		// form
		// 'projects/<project>/instances/<instance>/appProfiles/<appProfileId>'.
		name?:    string
		project?: string

		// Must be used with multi-cluster routing. If true, then this app
		// profile will use row affinity sticky routing. With row
		// affinity, Bigtable will route single row key requests based on
		// the row key, rather than randomly. Instead, each row key will
		// be assigned to a cluster by Cloud Bigtable, and will stick to
		// that cluster. Choosing this option improves read-your-writes
		// consistency for most requests under most circumstances,
		// without sacrificing availability. Consistency is not
		// guaranteed, as requests may still fail over between clusters
		// in the event of errors or latency.
		row_affinity?: bool
	})

	#data_boost_isolation_read_only: close({
		// The Compute Billing Owner for this Data Boost App Profile.
		// Possible values: ["HOST_PAYS"]
		compute_billing_owner!: string
	})

	#single_cluster_routing: close({
		// If true, CheckAndMutateRow and ReadModifyWriteRow requests are
		// allowed by this app profile.
		// It is unsafe to send these requests to the same
		// table/row/column in multiple clusters.
		allow_transactional_writes?: bool

		// The cluster to which read/write requests should be routed.
		cluster_id!: string
	})

	#standard_isolation: close({
		// The priority of requests sent using this app profile. Possible
		// values: ["PRIORITY_LOW", "PRIORITY_MEDIUM", "PRIORITY_HIGH"]
		priority!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
