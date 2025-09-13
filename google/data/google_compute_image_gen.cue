package data

#google_compute_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_image")
	close({
		archive_size_bytes?:          number
		creation_timestamp?:          string
		description?:                 string
		disk_size_gb?:                number
		family?:                      string
		filter?:                      string
		id?:                          string
		image_encryption_key_sha256?: string
		image_id?:                    string
		label_fingerprint?:           string
		labels?: [string]: string
		licenses?: [...string]
		most_recent?:                       bool
		name?:                              string
		project?:                           string
		self_link?:                         string
		source_disk?:                       string
		source_disk_encryption_key_sha256?: string
		source_disk_id?:                    string
		source_image_id?:                   string
		status?:                            string
	})
}
