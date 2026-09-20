package res

import "list"

google_vertex_ai_rag_corpus: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_rag_corpus")
	close({
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		timeouts?: #timeouts
		vector_db_config?: matchN(1, [#vector_db_config, list.MaxItems(1) & [...#vector_db_config]])

		// Output only. RagCorpus state.
		corpus_status?: [...close({
			error_status?: string
			state?:        string
		})]

		// Output only. Timestamp when this RagCorpus was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Optional. The description of the RagCorpus.
		description?: string

		// Required. The display name of the RagCorpus. The name can be up to 128
		// characters long and can consist of any UTF-8 characters.
		display_name!: string
		id?:           string

		// The generated name of the RagCorpus, in the format
		// projects/{project}/locations/{location}/ragCorpora/{rag_corpus}.
		name?: string

		// The region of the RagCorpus. eg europe-west4
		region!:  string
		project?: string

		// Output only. Timestamp when this RagCorpus was last updated.
		update_time?: string
	})

	#encryption_spec: close({
		// Required. The Cloud KMS resource identifier of the customer managed
		// encryption key used to protect the resource. Has the form:
		// projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key.
		// The key needs to be in the same region as where the resource is
		// created.
		kms_key_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vector_db_config: close({
		rag_embedding_model_config?: matchN(1, [_#defs."/$defs/vector_db_config/$defs/rag_embedding_model_config", list.MaxItems(1) & [..._#defs."/$defs/vector_db_config/$defs/rag_embedding_model_config"]])
		rag_managed_db?: matchN(1, [_#defs."/$defs/vector_db_config/$defs/rag_managed_db", list.MaxItems(1) & [..._#defs."/$defs/vector_db_config/$defs/rag_managed_db"]])
	})

	_#defs: "/$defs/vector_db_config/$defs/rag_embedding_model_config": close({
		vertex_prediction_endpoint?: matchN(1, [_#defs."/$defs/vector_db_config/$defs/rag_embedding_model_config/$defs/vertex_prediction_endpoint", list.MaxItems(1) & [..._#defs."/$defs/vector_db_config/$defs/rag_embedding_model_config/$defs/vertex_prediction_endpoint"]])
	})

	_#defs: "/$defs/vector_db_config/$defs/rag_embedding_model_config/$defs/vertex_prediction_endpoint": close({
		// Required. The endpoint resource name. Format:
		// projects/{project}/locations/{location}/publishers/{publisher}/models/{model}
		// or projects/{project}/locations/{location}/endpoints/{endpoint}.
		endpoint!: string

		// Output only. The resource name of the model that is deployed on the endpoint.
		model?: string

		// Output only. Version ID of the model that is deployed on the endpoint.
		model_version_id?: string
	})

	_#defs: "/$defs/vector_db_config/$defs/rag_managed_db": close({
		ann?: matchN(1, [_#defs."/$defs/vector_db_config/$defs/rag_managed_db/$defs/ann", list.MaxItems(1) & [..._#defs."/$defs/vector_db_config/$defs/rag_managed_db/$defs/ann"]])
		knn?: matchN(1, [_#defs."/$defs/vector_db_config/$defs/rag_managed_db/$defs/knn", list.MaxItems(1) & [..._#defs."/$defs/vector_db_config/$defs/rag_managed_db/$defs/knn"]])
	})

	_#defs: "/$defs/vector_db_config/$defs/rag_managed_db/$defs/ann": close({
		// Number of leaf nodes in the tree-based structure. Default value is 500.
		leaf_count?: number

		// The depth of the tree-based structure. Only depth values of 2 and 3 are
		// supported. Default value is 2.
		tree_depth?: number
	})

	_#defs: "/$defs/vector_db_config/$defs/rag_managed_db/$defs/knn": close({})
}
