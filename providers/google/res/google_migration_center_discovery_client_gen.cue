package res

google_migration_center_discovery_client: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_migration_center_discovery_client")
	close({
		timeouts?: #timeouts

		// Time when the discovery client was first created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Free text description.
		// Maximum length is 1000 characters.
		description?: string

		// User specified ID for the discovery client. It will become the last
		// component of the discovery client name. The ID must be unique within the
		// project, is restricted to lower-cased letters and has a maximum length of
		// 63 characters. The ID must match the regular expression:
		// '[a-z]([a-z0-9-]{0,61}[a-z0-9])?'.
		discovery_client_id!: string

		// Free text display name.
		// Maximum length is 63 characters.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// Errors affecting client functionality.
		errors?: [...close({
			code?: number
			details?: [...close({})]
			message?: string
		})]

		// Client expiration time in UTC. If specified, the backend will not accept
		// new frames after this time.
		expire_time?: string

		// Last heartbeat time.
		// Healthy clients are expected to send heartbeats regularly (normally every
		// few minutes).
		heartbeat_time?: string
		id?:             string

		// Labels as key value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. Full name of this discovery client.
		name?: string

		// Service account used by the discovery client for various operation.
		service_account!: string
		project?:         string

		// This field is intended for internal use.
		signals_endpoint?: string

		// Full name of the source object associated with this discovery client.
		source!: string

		// Current state of the discovery client.
		// Possible values:
		// ACTIVE
		// OFFLINE
		// DEGRADED
		// EXPIRED
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Input only. Client time-to-live. If specified, the backend will not accept new
		// frames after this time.
		// This field is input only. The derived expiration time is provided as
		// output through the 'expire_time' field.
		ttl?: string

		// Time when the discovery client was last updated. This value is not updated
		// by heartbeats, to view the last heartbeat time please refer to the
		// 'heartbeat_time' field.
		update_time?: string

		// Client version, as reported in recent heartbeat.
		version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
