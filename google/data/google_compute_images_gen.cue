package data

#google_compute_images: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_images")
	close({
		filter?: string
		id?:     string
		images?: [...close({
			archive_size_bytes?: number
			creation_timestamp?: string
			description?:        string
			disk_size_gb?:       number
			family?:             string
			image_id?:           number
			labels?: [string]: string
			name?:            string
			self_link?:       string
			source_disk?:     string
			source_disk_id?:  string
			source_image_id?: string
		})]
		project?: string
	})
}
