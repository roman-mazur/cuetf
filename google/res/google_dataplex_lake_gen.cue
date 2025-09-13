package res

import "list"

#google_dataplex_lake: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataplex_lake")
	close({
		// Output only. Aggregated status of the underlying assets of the
		// lake.
		asset_status?: [...close({
			active_assets?:                   number
			security_policy_applying_assets?: number
			update_time?:                     string
		})]

		// Output only. The time when the lake was created.
		create_time?: string

		// Optional. Description of the lake.
		description?: string

		// Optional. User friendly display name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. User-defined labels for the lake.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field `effective_labels` for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location for the resource
		location!: string

		// Output only. Metastore status of the lake.
		metastore_status?: [...close({
			endpoint?:    string
			message?:     string
			state?:       string
			update_time?: string
		})]

		// The name of the lake.
		name!: string
		metastore?: matchN(1, [#metastore, list.MaxItems(1) & [...#metastore]])
		timeouts?: #timeouts

		// The project for the resource
		project?: string

		// Output only. Service account associated with this lake. This
		// service account must be authorized to access or operate on
		// resources managed by the lake.
		service_account?: string

		// Output only. Current state of the lake. Possible values:
		// STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. System generated globally unique ID for the lake.
		// This ID will be different if the lake is deleted and
		// re-created with the same name.
		uid?: string

		// Output only. The time when the lake was last updated.
		update_time?: string
	})

	#metastore: close({
		// Optional. A relative reference to the Dataproc Metastore
		// (https://cloud.google.com/dataproc-metastore/docs) service
		// associated with the lake:
		// `projects/{project_id}/locations/{location_id}/services/{service_id}`
		service?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
