package res

import "list"

#google_vertex_ai_feature_online_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vertex_ai_feature_online_store")
	close({
		// The timestamp of when the feature online store was created in
		// RFC3339 UTC "Zulu" format, with nanosecond resolution and up
		// to nine fractional digits.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Used to perform consistent read-modify-write updates.
		etag?: string

		// If set to true, any FeatureViews and Features for this
		// FeatureOnlineStore will also be deleted.
		force_destroy?: bool

		// The labels with user-defined metadata to organize your feature
		// online stores.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The resource name of the Feature Online Store. This value may
		// be up to 60 characters, and valid characters are [a-z0-9_].
		// The first character cannot be a number.
		name!: string

		// The region of feature online store. eg us-central1
		region?:  string
		project?: string
		bigtable?: matchN(1, [#bigtable, list.MaxItems(1) & [...#bigtable]])
		dedicated_serving_endpoint?: matchN(1, [#dedicated_serving_endpoint, list.MaxItems(1) & [...#dedicated_serving_endpoint]])
		optimized?: matchN(1, [#optimized, list.MaxItems(1) & [...#optimized]])
		timeouts?: #timeouts

		// The state of the Feature Online Store. See the possible states
		// in [this
		// link](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featureOnlineStores#state).
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the feature online store was last updated
		// in RFC3339 UTC "Zulu" format, with nanosecond resolution and
		// up to nine fractional digits.
		update_time?: string
	})

	#bigtable: close({
		auto_scaling?: matchN(1, [_#defs."/$defs/bigtable/$defs/auto_scaling", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/bigtable/$defs/auto_scaling"]])
	})

	#dedicated_serving_endpoint: close({
		private_service_connect_config?: matchN(1, [_#defs."/$defs/dedicated_serving_endpoint/$defs/private_service_connect_config", list.MaxItems(1) & [..._#defs."/$defs/dedicated_serving_endpoint/$defs/private_service_connect_config"]])

		// Domain name to use for this FeatureOnlineStore
		public_endpoint_domain_name?: string

		// Name of the service attachment resource. Applicable only if
		// private service connect is enabled and after FeatureViewSync
		// is created.
		service_attachment?: string
	})

	#optimized: close({})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/bigtable/$defs/auto_scaling": close({
		// A percentage of the cluster's CPU capacity. Can be from 10% to
		// 80%. When a cluster's CPU utilization exceeds the target that
		// you have set, Bigtable immediately adds nodes to the cluster.
		// When CPU utilization is substantially lower than the target,
		// Bigtable removes nodes. If not set will default to 50%.
		cpu_utilization_target?: number

		// The maximum number of nodes to scale up to. Must be greater
		// than or equal to minNodeCount, and less than or equal to 10
		// times of 'minNodeCount'.
		max_node_count!: number

		// The minimum number of nodes to scale down to. Must be greater
		// than or equal to 1.
		min_node_count!: number
	})

	_#defs: "/$defs/dedicated_serving_endpoint/$defs/private_service_connect_config": close({
		// If set to true, customers will use private service connection
		// to send request. Otherwise, the connection will set to public
		// endpoint.
		enable_private_service_connect!: bool

		// A list of Projects from which the forwarding rule will target
		// the service attachment.
		project_allowlist?: [...string]
	})
}
