package data

#google_composer_image_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_composer_image_versions")
	close({
		id?: string
		image_versions?: [...close({
			image_version_id?: string
			supported_python_versions?: [...string]
		})]
		project?: string
		region?:  string
	})
}
