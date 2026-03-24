package res

#scaleway_instance_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_instance_image")
	close({
		timeouts?: #timeouts

		// The IDs of the additional volumes attached to the image
		additional_volume_ids?: [...string]

		// Specs of the additional volumes attached to the image
		additional_volumes?: [...close({
			id?:   string
			name?: string
			server?: [string]: string
			size?: number
			tags?: [...string]
			volume_type?: string
		})]

		// Architecture of the image (default = x86_64)
		architecture?: string

		// The date and time of the creation of the image
		creation_date?: string

		// The ID of the backed-up server from which the snapshot was
		// taken
		from_server_id?: string
		id?:             string

		// The date and time of the last modification of the Redis cluster
		modification_date?: string

		// The name of the image
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// If true, the image will be public
		public?: bool

		// Specs of the additional volumes attached to the image
		root_volume?: [...close({
			id?:          string
			name?:        string
			size?:        number
			volume_type?: string
		})]

		// UUID of the snapshot from which the image is to be created
		root_volume_id!: string

		// The state of the image [ available | creating | error ]
		state?: string

		// List of tags ["tag1", "tag2", ...] attached to the image
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
