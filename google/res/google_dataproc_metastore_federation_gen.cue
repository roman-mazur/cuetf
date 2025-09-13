package res

#google_dataproc_metastore_federation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataproc_metastore_federation")
	close({
		// Output only. The time when the metastore federation was
		// created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// federation. Defaults to false.
		// When the field is set to true in Terraform state, a 'terraform
		// apply'
		// or 'terraform destroy' that would delete the federation will
		// fail.
		deletion_protection?: bool

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The URI of the endpoint used to access the metastore
		// federation.
		endpoint_uri?: string

		// The ID of the metastore federation. The id must contain only
		// letters (a-z, A-Z), numbers (0-9), underscores (_),
		// and hyphens (-). Cannot begin or end with underscore or hyphen.
		// Must consist of between
		// 3 and 63 characters.
		federation_id!: string
		id?:            string

		// User-defined labels for the metastore federation.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where the metastore federation should reside.
		location?: string

		// The relative resource name of the metastore federation.
		name?:    string
		project?: string

		// The current state of the metastore federation.
		state?: string
		backend_metastores?: matchN(1, [#backend_metastores, [_, ...] & [...#backend_metastores]])
		timeouts?: #timeouts

		// Additional information about the current state of the metastore
		// federation, if available.
		state_message?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The globally unique resource identifier of the metastore
		// federation.
		uid?: string

		// Output only. The time when the metastore federation was last
		// updated.
		update_time?: string

		// The Apache Hive metastore version of the federation. All
		// backend metastore versions must be compatible with the
		// federation version.
		version!: string
	})

	#backend_metastores: close({
		// The type of the backend metastore. Possible values:
		// ["METASTORE_TYPE_UNSPECIFIED", "DATAPROC_METASTORE",
		// "BIGQUERY"]
		metastore_type!: string

		// The relative resource name of the metastore that is being
		// federated. The formats of the relative resource names for the
		// currently supported metastores are listed below: Dataplex:
		// projects/{projectId}/locations/{location}/lakes/{lake_id}
		// BigQuery: projects/{projectId} Dataproc Metastore:
		// projects/{projectId}/locations/{location}/services/{serviceId}
		name!: string
		rank!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
