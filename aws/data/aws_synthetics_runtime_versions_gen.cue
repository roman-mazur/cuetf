package data

#aws_synthetics_runtime_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_synthetics_runtime_versions")
	close({
		id?:     string
		region?: string
		runtime_versions?: [...close({
			deprecation_date?: string
			description?:      string
			release_date?:     string
			version_name?:     string
		})]
	})
}
