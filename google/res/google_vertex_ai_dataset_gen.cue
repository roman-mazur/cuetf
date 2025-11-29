package res

import "list"

#google_vertex_ai_dataset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_dataset")
	close({
		// The timestamp of when the dataset was created in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		create_time?: string

		// The user-defined name of the Dataset. The name can be up to 128
		// characters long and can be consist of any UTF-8 characters.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// A set of key/value label pairs to assign to this Workflow.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Points to a YAML file stored on Google Cloud Storage describing
		// additional information about the Dataset. The schema is
		// defined as an OpenAPI 3.0.2 Schema Object. The schema files
		// that can be used here are found in
		// gs://google-cloud-aiplatform/schema/dataset/metadata/.
		metadata_schema_uri!: string

		// The resource name of the Dataset. This value is set by Google.
		name?:    string
		project?: string

		// The region of the dataset. eg us-central1
		region?: string
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the dataset was last updated in RFC3339
		// UTC "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		update_time?: string
	})

	#encryption_spec: close({
		// Required. The Cloud KMS resource identifier of the customer
		// managed encryption key used to protect a resource.
		// Has the form:
		// projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key.
		// The key needs to be in the same region as where the resource
		// is created.
		kms_key_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
