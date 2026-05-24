package res

#google_compute_instance_group_named_port: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_instance_group_named_port")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The name of the instance group.
		group!: string
		id?:    string

		// The name for this named port. The name must be 1-63 characters
		// long, and comply with RFC1035.
		name!: string

		// The port number, which can be a value between 1 and 65535.
		port!:    number
		project?: string

		// The zone of the instance group.
		zone?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
