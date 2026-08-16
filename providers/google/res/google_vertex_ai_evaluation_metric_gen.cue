package res

import "list"

google_vertex_ai_evaluation_metric: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_evaluation_metric")
	close({
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		timeouts?: #timeouts

		// The timestamp of when the EvaluationMetric was created in RFC3339 UTC "Zulu" format,
		// with nanosecond resolution and up to nine fractional digits.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// A description of the EvaluationMetric.
		description?: string

		// The user-friendly display name for the EvaluationMetric.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// The ID to use for the EvaluationMetric, which will become the final
		// component of the resource name. This value should be 1-63 characters,
		// and valid characters are /[a-z][0-9]-/. The first character must be
		// a lowercase letter, and the last character must be a lowercase letter
		// or number. If not provided, the server will generate a unique ID.
		evaluation_metric_id?: string

		// The Google Cloud Storage URI that stores the metric specification.
		gcs_uri?: string
		id?:      string

		// Labels for the EvaluationMetric.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The metric configuration as a JSON string. Uses camelCase field names
		// to match the API format. Supports LLM-based metrics and custom code
		// execution metrics.
		// See the [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/Metric)
		// for the full schema.
		metric?: string

		// The short name of the EvaluationMetric (the final component of the resource name).
		name?: string

		// The region of the EvaluationMetric. eg us-central1
		region!:  string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the EvaluationMetric was last updated in RFC3339 UTC "Zulu" format,
		// with nanosecond resolution and up to nine fractional digits.
		update_time?: string
	})

	#encryption_spec: close({
		// Required. The Cloud KMS resource identifier of the customer managed encryption key
		// used to protect a resource. Has the form:
		// 'projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key'.
		// The key needs to be in the same region as where the resource is created.
		kms_key_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
