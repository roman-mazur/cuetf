package res

import "list"

google_firestore_change_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firestore_change_stream")
	close({
		collection_group_scope?: matchN(1, [#collection_group_scope, list.MaxItems(1) & [...#collection_group_scope]])
		database_scope?: matchN(1, [#database_scope, list.MaxItems(1) & [...#database_scope]])
		timeouts?: #timeouts

		// The creation timestamp of the change stream.
		create_time?: string

		// The Firestore database ID. Defaults to '"(default)"'.
		database?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Output only. This checksum is computed by the server based on the value of other fields,
		// and may be sent on delete request to ensure the client has an
		// up-to-date value before proceeding.
		etag?: string
		id?:   string

		// The ID to use for the change stream, which will become the final component
		// of the change stream's resource name.
		name!: string

		// The duration for which change stream data is retained.
		// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "86400s".
		retention_period!: string
		project?:          string

		// The time the Change Stream started recording events.
		start_time?: string

		// The last update timestamp of the change stream.
		update_time?: string
	})

	#collection_group_scope: close({
		// The ID of the collection group to track.
		collection_group_id!: string
	})

	#database_scope: close({})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
