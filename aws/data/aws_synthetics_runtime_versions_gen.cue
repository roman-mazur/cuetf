package data

#aws_synthetics_runtime_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_synthetics_runtime_versions")
	id?: string
	runtime_versions?: #runtime_versions | [...#runtime_versions]

	#runtime_versions: {
		deprecation_date?: string
		description?:      string
		release_date?:     string
		version_name?:     string
	}
}
