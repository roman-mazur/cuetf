package res

google_access_context_manager_egress_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_access_context_manager_egress_policy")
	close({
		timeouts?: #timeouts

		// The name of the Access Policy this resource belongs to.
		access_policy_id?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The name of the Service Perimeter to add this resource to.
		egress_policy_name!: string
		id?:                 string

		// A GCP resource that is inside of the service perimeter.
		resource!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
