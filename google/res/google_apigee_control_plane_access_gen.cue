package res

#google_apigee_control_plane_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_control_plane_access")
	close({
		// Array of service accounts authorized to publish analytics data
		// to the control plane, each specified using the following
		// format: 'serviceAccount:service-account-name'.
		//
		// The 'service-account-name' is formatted like an email address.
		// For example:
		// serviceAccount@my_project_id.iam.gserviceaccount.com
		//
		// You might specify multiple service accounts, for example, if
		// you have multiple environments and wish to assign a unique
		// service account to each one.
		analytics_publisher_identities?: [...string]
		id?: string

		// Name of the Apigee organization.
		name!:     string
		timeouts?: #timeouts

		// Array of service accounts to grant access to control plane
		// resources (for the Synchronizer component), each specified
		// using the following format:
		// 'serviceAccount:service-account-name'.
		//
		// The 'service-account-name' is formatted like an email address.
		// For example:
		// serviceAccount@my_project_id.iam.gserviceaccount.com
		//
		// You might specify multiple service accounts, for example, if
		// you have multiple environments and wish to assign a unique
		// service account to each one.
		//
		// The service accounts must have **Apigee Synchronizer Manager**
		// role. See also [Create service
		// accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts).
		synchronizer_identities?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
