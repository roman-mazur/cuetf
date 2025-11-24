package res

#google_gemini_repository_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_gemini_repository_group")
	close({
		// Required. Id of the Code Repository Index.
		code_repository_index!: string

		// Output only. Create time stamp.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. Labels as key value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location of the Code Repository Index, for example
		// 'us-central1'.
		location!: string

		// Immutable. Identifier. Name of Repository Group.
		name?:    string
		project?: string

		// Required. Id of the Repository Group.
		repository_group_id!: string
		repositories!: matchN(1, [#repositories, [_, ...] & [...#repositories]])
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. Update time stamp.
		update_time?: string
	})

	#repositories: close({
		// Required. The Git branch pattern used for indexing in RE2
		// syntax.
		// See https://github.com/google/re2/wiki/syntax for syntax.
		branch_pattern!: string

		// Required. The DeveloperConnect repository full resource name,
		// relative resource name
		// or resource URL to be indexed.
		resource!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
