package res

import "list"

google_vector_search_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vector_search_index")
	close({
		dedicated_infrastructure?: matchN(1, [#dedicated_infrastructure, list.MaxItems(1) & [...#dedicated_infrastructure]])
		dense_scann?: matchN(1, [#dense_scann, list.MaxItems(1) & [...#dense_scann]])
		timeouts?: #timeouts

		// The ID of the parent Collection.
		collection_id!: string

		// [Output only] Create time stamp
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// User-specified description of the index
		description?: string

		// User-specified display name of the index
		display_name?: string

		// Distance metric used for indexing. If not specified, will default to
		// 'DOT_PRODUCT'. Possible values: ["DOT_PRODUCT", "COSINE_DISTANCE"]
		distance_metric?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// The fields to push into the index to enable fast ANN inline filtering.
		filter_fields?: [...string]
		id?: string

		// The collection schema field to index.
		index_field!: string

		// ID of the Index to create.
		// The id must be 1-63 characters long, and comply with
		// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
		// Specifically, it must be 1-63 characters long and match the regular
		// expression '[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?'.
		index_id!: string

		// Labels as key value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. name of resource
		name?: string

		// The fields to push into the index to enable inline data retrieval.
		store_fields?: [...string]
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// [Output only] Update time stamp
		update_time?: string
	})

	#dedicated_infrastructure: close({
		autoscaling_spec?: matchN(1, [_#defs."/$defs/dedicated_infrastructure/$defs/autoscaling_spec", list.MaxItems(1) & [..._#defs."/$defs/dedicated_infrastructure/$defs/autoscaling_spec"]])

		// Mode of the dedicated infrastructure. Defaults to 'PERFORMANCE_OPTIMIZED'.
		// Possible values: ["MODE_UNSPECIFIED", "STORAGE_OPTIMIZED",
		// "PERFORMANCE_OPTIMIZED"]
		mode?: string
	})

	#dense_scann: close({
		// Feature norm type for the ScaNN index. Possible values:
		// ["FEATURE_NORM_TYPE_UNSPECIFIED", "NONE", "UNIT_L2_NORM"]
		feature_norm_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/dedicated_infrastructure/$defs/autoscaling_spec": close({
		// The maximum number of replicas. Must be >= 'min_replica_count'
		// and <= '1000'. If not set or set to '0', defaults to the greater
		// of 'min_replica_count' and '2' (or '5' for the v1beta version).
		max_replica_count?: number

		// The minimum number of replicas. If not set or set to '0', defaults
		// to '2'. Must be >= '1' and <= '1000'.
		min_replica_count?: number
	})
}
