package res

import "list"

google_apigee_datastore: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_datastore")
	close({
		datastore_config!: matchN(1, [#datastore_config, list.MaxItems(1) & [_, ...] & [...#datastore_config]])
		timeouts?: #timeouts

		// The time at which the datastore was created in milliseconds since the epoch.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The display name for the datastore.
		display_name!: string
		id?:           string

		// The time at which the datastore was last updated in milliseconds since the epoch.
		last_update_time?: string

		// The server-assigned UUID identifier for the datastore. Extracted
		// from the 'self' field in the API response.
		name?: string

		// The Apigee organization name.
		org?: string

		// The Apigee Organization associated with the Apigee datastore,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string

		// The resource link for the datastore, including the full API path.
		self?: string

		// The type of target for the datastore. Must be 'gcs' for Google
		// Cloud Storage or 'bigquery' for BigQuery.
		target_type!: string
	})

	#datastore_config: close({
		// The name of the Cloud Storage bucket. Required for 'gcs' target type.
		bucket_name?: string

		// The name of the BigQuery dataset. Required for 'bigquery' target type.
		dataset_name?: string

		// The path within the Cloud Storage bucket. Used for 'gcs' target type.
		path?: string

		// The GCP project ID that the datastore target resides in.
		project_id!: string

		// The prefix for BigQuery table names. Used for 'bigquery' target type.
		table_prefix?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
