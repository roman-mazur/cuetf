package data

google_kms_autokey_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_kms_autokey_config")
	close({
		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The etag of the AutokeyConfig for optimistic concurrency control.
		etag?: string

		// The folder for which to retrieve config.
		folder!: string
		id?:     string

		// The target key project for a given folder where KMS Autokey will provision a
		// CryptoKey for any new KeyHandle the Developer creates. Should have the form
		// 'projects/<project_id_or_number>'.
		key_project?: string

		// How Autokey determines which project to use when provisioning CMEK keys.
		// Possible values: ["DEDICATED_KEY_PROJECT", "RESOURCE_PROJECT", "DISABLED"]
		key_project_resolution_mode?: string
	})
}
