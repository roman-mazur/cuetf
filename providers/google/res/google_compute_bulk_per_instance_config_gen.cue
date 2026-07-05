package res

google_compute_bulk_per_instance_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_bulk_per_instance_config")
	close({
		instances?: matchN(1, [#instances, [...#instances]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The instance group manager this instance config is part of.
		instance_group_manager!: string

		// Zone where the containing instance group manager is located
		zone?:    string
		project?: string
	})

	#instances: close({
		// The name for this per-instance config and its corresponding instance.
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
