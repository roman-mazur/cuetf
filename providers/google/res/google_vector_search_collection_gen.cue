package res

import "list"

#google_vector_search_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vector_search_collection")
	close({
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		timeouts?: #timeouts
		vector_schema?: matchN(1, [#vector_schema, [...#vector_schema]])

		// ID of the Collection to create.
		// The id must be 1-63 characters long, and comply with
		// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
		// Specifically, it must be 1-63 characters long and match the
		// regular
		// expression '[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?'.
		collection_id!: string

		// [Output only] Create time stamp
		create_time?: string

		// JSON Schema for data.
		// Field names must contain only alphanumeric characters,
		// underscores, and hyphens.
		data_schema?: string

		// User-specified description of the collection
		description?: string

		// User-specified display name of the collection
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Labels as key value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. name of resource
		name?:    string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// [Output only] Update time stamp
		update_time?: string
	})

	#encryption_spec: close({
		// Resource name of the Cloud KMS key used to protect the
		// resource.
		//
		// The Cloud KMS key must be in the same region as the resource.
		// It must have
		// the format
		// 'projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}'.
		crypto_key_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vector_schema: close({
		dense_vector?: matchN(1, [_#defs."/$defs/vector_schema/$defs/dense_vector", list.MaxItems(1) & [..._#defs."/$defs/vector_schema/$defs/dense_vector"]])
		sparse_vector?: matchN(1, [_#defs."/$defs/vector_schema/$defs/sparse_vector", list.MaxItems(1) & [..._#defs."/$defs/vector_schema/$defs/sparse_vector"]])
		field_name!: string
	})

	_#defs: "/$defs/vector_schema/$defs/dense_vector": close({
		vertex_embedding_config?: matchN(1, [_#defs."/$defs/vector_schema/$defs/dense_vector/$defs/vertex_embedding_config", list.MaxItems(1) & [..._#defs."/$defs/vector_schema/$defs/dense_vector/$defs/vertex_embedding_config"]])

		// Dimensionality of the vector field.
		dimensions?: number
	})

	_#defs: "/$defs/vector_schema/$defs/dense_vector/$defs/vertex_embedding_config": close({
		// Required: ID of the embedding model to use. See
		// https://cloud.google.com/vertex-ai/generative-ai/docs/learn/models#embeddings-models
		// for the list of supported models.
		model_id!: string

		// Possible values:
		// RETRIEVAL_QUERY
		// RETRIEVAL_DOCUMENT
		// SEMANTIC_SIMILARITY
		// CLASSIFICATION
		// CLUSTERING
		// QUESTION_ANSWERING
		// FACT_VERIFICATION
		// CODE_RETRIEVAL_QUERY
		task_type!: string

		// Required: Text template for the input to the model. The
		// template must
		// contain one or more references to fields in the DataObject,
		// e.g.:
		// "Movie Title: {title} ---- Movie Plot: {plot}".
		text_template!: string
	})

	_#defs: "/$defs/vector_schema/$defs/sparse_vector": close({})
}
