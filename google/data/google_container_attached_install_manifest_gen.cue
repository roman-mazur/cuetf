package data

#google_container_attached_install_manifest: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_container_attached_install_manifest")
	close({
		cluster_id!:       string
		id?:               string
		location!:         string
		manifest?:         string
		platform_version!: string
		project!:          string
	})
}
