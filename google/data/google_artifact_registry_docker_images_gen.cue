package data

#google_artifact_registry_docker_images: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_artifact_registry_docker_images")
	close({
		docker_images?: [...close({
			build_time?:       string
			image_name?:       string
			image_size_bytes?: string
			media_type?:       string
			name?:             string
			self_link?:        string
			tags?: [...string]
			update_time?: string
			upload_time?: string
		})]
		id?:            string
		location!:      string
		project?:       string
		repository_id!: string
	})
}
