package data

google_artifact_registry_file: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_artifact_registry_file")
	close({
		timeouts?:    #timeouts
		create_time?: string
		file_id!:     string
		hashes?: [string]: string
		id?:                  string
		location!:            string
		name?:                string
		output_base64sha256?: string
		output_path!:         string
		output_sha256?:       string
		overwrite?:           bool
		project?:             string
		repository_id!:       string
		size_bytes?:          number
		update_time?:         string
	})

	#timeouts: close({
		read?: string
	})
}
