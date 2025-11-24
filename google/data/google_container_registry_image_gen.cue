package data

#google_container_registry_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_container_registry_image")
	close({
		digest?:    string
		id?:        string
		image_url?: string
		name!:      string
		project?:   string
		region?:    string
		tag?:       string
	})
}
