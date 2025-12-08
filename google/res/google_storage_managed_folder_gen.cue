package res

#google_storage_managed_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_managed_folder")
	close({
		// The name of the bucket that contains the managed folder.
		bucket!: string

		// The timestamp at which this managed folder was created.
		create_time?: string

		// Allows the deletion of a managed folder even if contains
		// objects. If a non-empty managed folder is deleted, any objects
		// within the folder will remain in a simulated folder with the
		// same name.
		force_destroy?: bool
		id?:            string

		// The metadata generation of the managed folder.
		metageneration?: string

		// The name of the managed folder expressed as a path. Must
		// include
		// trailing '/'. For example, 'example_dir/example_dir2/'.
		name!:      string
		self_link?: string
		timeouts?:  #timeouts

		// The timestamp at which this managed folder was most recently
		// updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
