package res

google_firestore_user_creds: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firestore_user_creds")
	close({
		timeouts?: #timeouts

		// The timestamp at which these user creds were created.
		create_time?: string

		// The Firestore database ID.
		database!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The ID to use for the user creds, which will become the final component
		// of the user cred's resource name.
		//
		// This value should be 4-63 characters. Valid characters are /[a-z][0-9]-/
		// with first character a letter and the last a letter or a number. Must not
		// be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
		name!: string

		// Describes the Resource Identity principal.
		resource_identity?: [...close({
			principal?: string
		})]
		project?: string

		// The plaintext server-generated password for the user creds.
		secure_password?: string

		// The state of the user creds.
		state?: string

		// The timestamp at which these user creds were updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
