package res

#google_gemini_code_repository_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gemini_code_repository_index")
	close({
		// Required. Id of the Code Repository Index.
		code_repository_index_id!: string

		// Output only. Create time stamp.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// If set to true, will allow deletion of the CodeRepositoryIndex
		// even if there are existing RepositoryGroups for the resource.
		// These RepositoryGroups will also be deleted.
		force_destroy?: bool
		id?:            string

		// Optional. Immutable. Customer-managed encryption key name, in
		// the format
		// 'projects/*/locations/*/keyRings/*/cryptoKeys/*'.
		kms_key?: string

		// Optional. Labels as key value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the Code Repository Index, for example
		// 'us-central1'.
		location!: string

		// Immutable. Identifier. Name of Code Repository Index.
		name?:     string
		timeouts?: #timeouts

		// Output only. Code Repository Index instance State.
		// Possible values are: 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE',
		// 'DELETING', 'SUSPENDED'.
		state?:   string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. Update time stamp.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
