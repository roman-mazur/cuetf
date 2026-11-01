package res

google_bigtable_memory_layer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigtable_memory_layer")
	close({
		timeouts?: #timeouts

		// The ID of the cluster to enable the memory layer on.
		cluster!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// System-generated token used by the server to ensure that the client has an
		// up-to-date value before proceeding.
		etag?: string
		id?:   string

		// The name of the instance to enable the memory layer within.
		instance!: string

		// The memory configuration for the cluster.
		memory_config?: [...close({
			storage_size_gib?: number
		})]

		// The unique name of the memory layer. Values are of the form
		// 'projects/<project>/instances/<instance>/clusters/<cluster>/memoryLayer'.
		name?: string

		// The current state of the memory layer.
		state?:   string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
