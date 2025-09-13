package res

#google_storage_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_storage_folder")
	close({
		// The name of the bucket that contains the folder.
		bucket!: string

		// The timestamp at which this folder was created.
		create_time?: string

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
		timeouts?:  #timeouts

		// The timestamp at which this folder was most recently updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
