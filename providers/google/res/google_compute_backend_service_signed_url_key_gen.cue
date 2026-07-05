package res

google_compute_backend_service_signed_url_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_backend_service_signed_url_key")
	close({
		timeouts?: #timeouts

		// The backend service this signed URL key belongs.
		backend_service!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// 128-bit key value used for signing the URL. The key value must be a
		// valid RFC 4648 Section 5 base64url encoded string.
		key_value!: string

		// Name of the signed URL key.
		name!:    string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
