package res

import "list"

#google_vertex_ai_tensorboard: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vertex_ai_tensorboard")
	close({
		// Consumer project Cloud Storage path prefix used to store blob
		// data, which can either be a bucket or directory. Does not end
		// with a '/'.
		blob_storage_path_prefix?: string

		// The timestamp of when the Tensorboard was created in RFC3339
		// UTC "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		create_time?: string

		// Description of this Tensorboard.
		description?: string

		// User provided name of this Tensorboard.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// The labels with user-defined metadata to organize your
		// Tensorboards.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Name of the Tensorboard.
		name?:    string
		project?: string

		// The region of the tensorboard. eg us-central1
		region?: string
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		timeouts?: #timeouts

		// The number of Runs stored in this Tensorboard.
		run_count?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the Tensorboard was last updated in
		// RFC3339 UTC "Zulu" format, with nanosecond resolution and up
		// to nine fractional digits.
		update_time?: string
	})

	#encryption_spec: close({
		// The Cloud KMS resource identifier of the customer managed
		// encryption key used to protect a resource.
		// Has the form:
		// projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key.
		// The key needs to be in the same region as where the resource
		// is created.
		kms_key_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
