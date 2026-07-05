package res

google_compute_disk_resource_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_disk_resource_policy_attachment")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The name of the disk in which the resource policies are attached to.
		disk!: string
		id?:   string

		// The resource policy to be attached to the disk for scheduling snapshot
		// creation. Do not specify the self link.
		name!: string

		// A reference to the zone where the disk resides.
		zone?:    string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
