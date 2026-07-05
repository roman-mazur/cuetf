package res

google_apigee_instance_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_instance_attachment")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The resource ID of the environment.
		environment!: string
		id?:          string

		// The Apigee instance associated with the Apigee environment,
		// in the format 'organizations/{{org_name}}/instances/{{instance_name}}'.
		instance_id!: string

		// The name of the newly created attachment (output parameter).
		name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
