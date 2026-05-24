package res

#google_storage_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_folder")
	close({
		timeouts?: #timeouts

		// The name of the bucket that contains the folder.
		bucket!: string

		// The timestamp at which this folder was created.
		create_time?: string

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

		// If set to true, items within folder if any will be force
		// destroyed.
		force_destroy?: bool
		id?:            string

		// The metadata generation of the folder.
		metageneration?: string

		// The name of the folder expressed as a path. Must include
		// trailing '/'. For example, 'example_dir/example_dir2/',
		// 'example@#/', 'a-b/d-f/'.
		name!:      string
		self_link?: string

		// The timestamp at which this folder was most recently updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
