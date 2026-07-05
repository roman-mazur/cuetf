package res

google_apigee_env_keystore: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_env_keystore")
	close({
		timeouts?: #timeouts

		// Aliases in this keystore.
		aliases?: [...string]

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The Apigee environment group associated with the Apigee environment,
		// in the format 'organizations/{{org_name}}/environments/{{env_name}}'.
		env_id!: string
		id?:     string

		// The name of the newly created keystore.
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
