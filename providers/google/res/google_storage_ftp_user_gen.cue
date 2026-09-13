package res

import "list"

google_storage_ftp_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_ftp_user")
	close({
		storage_directory_mappings?: matchN(1, [#storage_directory_mappings, [...#storage_directory_mappings]])
		timeouts?: #timeouts
		user_credentials?: matchN(1, [#user_credentials, list.MaxItems(1) & [...#user_credentials]])

		// The email address of the service account associated with the user.
		customer_service_account!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// Resource labels that can contain user-provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The location (region) of the Storage FTP User.
		location!: string

		// The ID of the server.
		server_id!: string
		project?:   string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The unique ID for the user.
		user_id!: string
	})

	#storage_directory_mappings: close({
		// The Cloud Storage bucket name. Omit the gs://.
		bucket?: string

		// The path of a folder within the bucket to set as the root directory for this directory mapping.
		bucket_prefix?: string

		// The directory path in the virtual file system.
		directory?: string

		// The access level for the directory. For read-only access, set this value to
		// READ_ONLY. For read and write access, set this value to READ_WRITE. Possible
		// values: ["READ_ONLY", "READ_WRITE"]
		permission?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#user_credentials: close({
		// The name of the credential.
		credential_name?: string

		// The type of the credential.
		credential_type?: string

		// The SSH public key body. A file either absolute or relative path should be
		// provided which contains the ssh public key using file() interpolation in
		// Terraform, not recommended to have key as a literal string in config.
		ssh_public_key_body?: string
	})
}
