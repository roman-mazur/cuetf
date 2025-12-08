package data

#google_artifact_registry_docker_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_artifact_registry_docker_image")
	close({
		// The time, as a RFC 3339 string, this image was built.
		build_time?: string

		// The image name to fetch.
		image_name!: string
		id?:         string

		// Calculated size of the image in bytes.
		image_size_bytes?: string

		// The region of the artifact registry repository. For example,
		// "us-west1".
		location!: string

		// Media type of this image.
		media_type?: string

		// The fully qualified name of the fetched image.
		name?: string

		// Project ID of the project.
		project?: string

		// The last part of the repository name to fetch from.
		repository_id!: string

		// The URI to access the image.
		self_link?: string

		// All tags associated with the image.
		tags?: [...string]

		// The time, as a RFC 3339 string, this image was updated.
		update_time?: string

		// The time, as a RFC 3339 string, the image was uploaded.
		upload_time?: string
	})
}
