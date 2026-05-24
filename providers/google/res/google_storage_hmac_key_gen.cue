package res

#google_storage_hmac_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_hmac_key")
	close({
		timeouts?: #timeouts

		// The access ID of the HMAC Key.
		access_id?: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string
		project?:         string

		// HMAC secret key material.
		secret?: string

		// The email address of the key's associated service account.
		service_account_email!: string

		// The state of the key. Can be set to one of ACTIVE, INACTIVE.
		// Default value: "ACTIVE" Possible values: ["ACTIVE",
		// "INACTIVE"]
		state?: string

		// 'The creation time of the HMAC key in RFC 3339 format. '
		time_created?: string

		// 'The last modification time of the HMAC key metadata in RFC
		// 3339 format.'
		updated?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
