package data

#scaleway_marketplace_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_marketplace_image")
	close({
		id?: string

		// The type of the desired image, instance_local or instance_sbs
		image_type?: string

		// The instance commercial type of the desired image
		instance_type?: string

		// Exact label of the desired image
		label!: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
