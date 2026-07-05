package res

google_compute_project_cloud_armor_tier: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_project_cloud_armor_tier")
	close({
		timeouts?: #timeouts

		// Managed protection tier to be set. Possible values: ["CA_STANDARD",
		// "CA_ENTERPRISE_PAYGO", "CA_ENTERPRISE_ANNUAL"]
		cloud_armor_tier!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string
		project?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
