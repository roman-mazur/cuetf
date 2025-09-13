package res

import "list"

#google_notebooks_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_notebooks_environment")
	close({
		// Instance creation time
		create_time?: string

		// A brief description of this environment.
		description?: string

		// Display name of this environment for the UI.
		display_name?: string
		id?:           string
		container_image?: matchN(1, [#container_image, list.MaxItems(1) & [...#container_image]])

		// A reference to the zone where the machine resides.
		location!: string
		timeouts?: #timeouts
		vm_image?: matchN(1, [#vm_image, list.MaxItems(1) & [...#vm_image]])

		// The name specified for the Environment instance.
		// Format:
		// projects/{project_id}/locations/{location}/environments/{environmentId}
		name!: string

		// Path to a Bash script that automatically runs after a notebook
		// instance fully boots up.
		// The path must be a URL or Cloud Storage path. Example:
		// "gs://path-to-file/file-name"
		post_startup_script?: string
		project?:             string
	})

	#container_image: close({
		// The path to the container image repository.
		// For example: gcr.io/{project_id}/{imageName}
		repository!: string

		// The tag of the container image. If not specified, this defaults
		// to the latest tag.
		tag?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vm_image: close({
		// Use this VM image family to find the image; the newest image in
		// this family will be used.
		image_family?: string

		// Use VM image name to find the image.
		image_name?: string

		// The name of the Google Cloud project that this VM image belongs
		// to.
		// Format: projects/{project_id}
		project!: string
	})
}
