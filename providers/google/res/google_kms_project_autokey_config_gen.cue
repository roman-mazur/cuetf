package res

google_kms_project_autokey_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_kms_project_autokey_config")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The etag of the AutokeyConfig for optimistic concurrency control.
		etag?: string
		id?:   string

		// How Autokey determines which project to use when provisioning CMEK keys.
		// Possible values: ["RESOURCE_PROJECT", "DISABLED"]
		key_project_resolution_mode?: string
		project?:                     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
