package data

#google_vertex_ai_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_vertex_ai_index")
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
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Customer-managed encryption key spec for an Index. If set, this
		// Index and all sub-resources of this Index will be secured by
		// this key.
		encryption_spec?: [...close({
			kms_key_name?: string
		})]

		// Used to perform consistent read-modify-write updates.
		etag?: string

		// Stats of the index resource.
		index_stats?: [...close({
			shards_count?:  number
			vectors_count?: string
		})]
		id?: string

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

		// Additional information about the Index.
		// Although this field is not marked as required in the API
		// specification, it is currently required when creating an Index
		// and must be provided.
		// Attempts to create an Index without this field will result in
		// an API error.
		metadata?: [...close({
			config?: [...close({
				algorithm_config?: [...close({
					brute_force_config?: [...close({})]
					tree_ah_config?: [...close({
						leaf_node_embedding_count?:    number
						leaf_nodes_to_search_percent?: number
					})]
				})]
				approximate_neighbors_count?: number
				dimensions?:                  number
				distance_measure_type?:       string
				feature_norm_type?:           string
				shard_size?:                  string
			})]
			contents_delta_uri?:    string
			is_complete_overwrite?: bool
		})]

		// Points to a YAML file stored on Google Cloud Storage describing
		// additional information about the Index, that is specific to
		// it. Unset if the Index does not have any additional
		// information.
		metadata_schema_uri?: string

		// The resource name of the Index.
		name!:    string
		project?: string

		// The region of the index. eg us-central1
		region!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the Index was last updated in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		update_time?: string
	})
}
