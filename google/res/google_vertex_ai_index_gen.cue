package res

import "list"

#google_vertex_ai_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vertex_ai_index")
	close({
		// The timestamp of when the Index was created in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		create_time?: string

		// The pointers to DeployedIndexes created from this Index. An
		// Index can be only deleted if all its DeployedIndexes had been
		// undeployed first.
		deployed_indexes?: [...close({
			deployed_index_id?: string
			index_endpoint?:    string
		})]

		// The description of the Index.
		description?: string

		// The display name of the Index. The name can be up to 128
		// characters long and can consist of any UTF-8 characters.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Used to perform consistent read-modify-write updates.
		etag?: string
		id?:   string

		// Stats of the index resource.
		index_stats?: [...close({
			shards_count?:  number
			vectors_count?: string
		})]

		// The update method to use with this Index. The value must be the
		// followings. If not set, BATCH_UPDATE will be used by default.
		// * BATCH_UPDATE: user can call indexes.patch with files on Cloud
		// Storage of datapoints to update.
		// * STREAM_UPDATE: user can call
		// indexes.upsertDatapoints/DeleteDatapoints to update the Index
		// and the updates will be applied in corresponding
		// DeployedIndexes in nearly real-time.
		index_update_method?: string

		// The labels with user-defined metadata to organize your Indexes.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		metadata?: matchN(1, [#metadata, list.MaxItems(1) & [_, ...] & [...#metadata]])
		timeouts?: #timeouts

		// Points to a YAML file stored on Google Cloud Storage describing
		// additional information about the Index, that is specific to
		// it. Unset if the Index does not have any additional
		// information.
		metadata_schema_uri?: string

		// The resource name of the Index.
		name?:    string
		project?: string

		// The region of the index. eg us-central1
		region?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the Index was last updated in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		update_time?: string
	})

	#metadata: close({
		config?: matchN(1, [_#defs."/$defs/metadata/$defs/config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/metadata/$defs/config"]])

		// Allows inserting, updating or deleting the contents of the
		// Matching Engine Index.
		// The string must be a valid Cloud Storage directory path. If
		// this
		// field is set when calling IndexService.UpdateIndex, then no
		// other
		// Index field can be also updated as part of the same call.
		// The expected structure and format of the files this URI points
		// to is
		// described at
		// https://cloud.google.com/vertex-ai/docs/matching-engine/using-matching-engine#input-data-format
		contents_delta_uri?: string

		// If this field is set together with contentsDeltaUri when
		// calling IndexService.UpdateIndex,
		// then existing content of the Index will be replaced by the data
		// from the contentsDeltaUri.
		is_complete_overwrite?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/metadata/$defs/config": close({
		// The default number of neighbors to find via approximate search
		// before exact reordering is
		// performed. Exact reordering is a procedure where results
		// returned by an
		// approximate search algorithm are reordered via a more expensive
		// distance computation.
		// Required if tree-AH algorithm is used.
		approximate_neighbors_count?: number

		// The number of dimensions of the input vectors.
		dimensions!: number

		// The distance measure used in nearest neighbor search. The value
		// must be one of the followings:
		// * SQUARED_L2_DISTANCE: Euclidean (L_2) Distance
		// * L1_DISTANCE: Manhattan (L_1) Distance
		// * COSINE_DISTANCE: Cosine Distance. Defined as 1 - cosine
		// similarity.
		// * DOT_PRODUCT_DISTANCE: Dot Product Distance. Defined as a
		// negative of the dot product
		distance_measure_type?: string

		// Type of normalization to be carried out on each vector. The
		// value must be one of the followings:
		// * UNIT_L2_NORM: Unit L2 normalization type
		// * NONE: No normalization type is specified.
		feature_norm_type?: string
		algorithm_config?: matchN(1, [_#defs."/$defs/metadata/$defs/config/$defs/algorithm_config", list.MaxItems(1) & [..._#defs."/$defs/metadata/$defs/config/$defs/algorithm_config"]])

		// Index data is split into equal parts to be processed. These are
		// called "shards".
		// The shard size must be specified when creating an index. The
		// value must be one of the followings:
		// * SHARD_SIZE_SMALL: Small (2GB)
		// * SHARD_SIZE_MEDIUM: Medium (20GB)
		// * SHARD_SIZE_LARGE: Large (50GB)
		shard_size?: string
	})

	_#defs: "/$defs/metadata/$defs/config/$defs/algorithm_config": close({
		brute_force_config?: matchN(1, [_#defs."/$defs/metadata/$defs/config/$defs/algorithm_config/$defs/brute_force_config", list.MaxItems(1) & [..._#defs."/$defs/metadata/$defs/config/$defs/algorithm_config/$defs/brute_force_config"]])
		tree_ah_config?: matchN(1, [_#defs."/$defs/metadata/$defs/config/$defs/algorithm_config/$defs/tree_ah_config", list.MaxItems(1) & [..._#defs."/$defs/metadata/$defs/config/$defs/algorithm_config/$defs/tree_ah_config"]])
	})

	_#defs: "/$defs/metadata/$defs/config/$defs/algorithm_config/$defs/brute_force_config": close({})

	_#defs: "/$defs/metadata/$defs/config/$defs/algorithm_config/$defs/tree_ah_config": close({
		// Number of embeddings on each leaf node. The default value is
		// 1000 if not set.
		leaf_node_embedding_count?: number

		// The default percentage of leaf nodes that any query may be
		// searched. Must be in
		// range 1-100, inclusive. The default value is 10 (means 10%) if
		// not set.
		leaf_nodes_to_search_percent?: number
	})
}
