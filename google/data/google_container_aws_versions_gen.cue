package data

#google_container_aws_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_container_aws_versions")
	close({
		id?:       string
		location?: string
		project?:  string
		supported_regions?: [...string]
		valid_versions?: [...string]
	})
}
