package res

#google_apigee_sync_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_sync_authorization")
	close({
		// Entity tag (ETag) used for optimistic concurrency control as a
		// way to help prevent simultaneous updates from overwriting each
		// other.
		// Used internally during updates.
		etag?: string
		id?:   string

		// Array of service accounts to grant access to control plane
		// resources, each specified using the following format:
		// 'serviceAccount:service-account-name'.
		//
		// The 'service-account-name' is formatted like an email address.
		// For example:
		// my-synchronizer-manager-serviceAccount@my_project_id.iam.gserviceaccount.com
		//
		// You might specify multiple service accounts, for example, if
		// you have multiple environments and wish to assign a unique
		// service account to each one.
		//
		// The service accounts must have **Apigee Synchronizer Manager**
		// role. See also [Create service
		// accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts).
		identities!: [...string]
		timeouts?: #timeouts

		// Name of the Apigee organization.
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
