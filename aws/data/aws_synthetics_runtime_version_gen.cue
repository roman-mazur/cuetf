package data

#aws_synthetics_runtime_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_synthetics_runtime_version")
	deprecation_date?: string
	description?:      string
	id?:               string
	latest?:           bool
	prefix!:           string
	release_date?:     string
	version?:          string
	version_name?:     string
}
