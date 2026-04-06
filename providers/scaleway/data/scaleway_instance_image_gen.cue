package data

#scaleway_instance_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_instance_image")
	close({
		// The additional volume IDs attached to the image
		additional_volume_ids?: [...string]

		// Architecture of the desired image
		architecture?: string

		// Date when the image was created
		creation_date?: string

		// ID of the bootscript associated with this image
		default_bootscript_id?: string

		// ID of the server the image is originated from
		from_server_id?: string
		id?:             string

		// ID of the desired image
		image_id?: string

		// Select most recent image if multiple match
		latest?: bool

		// Date when the image was updated
		modification_date?: string

		// Exact name of the desired image
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// Indication if the image is public
		public?: bool

		// ID of the root volume associated with this image
		root_volume_id?: string

		// State of the image
		state?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
