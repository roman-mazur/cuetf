package data

#aws_synthetics_runtime_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_synthetics_runtime_version")
	close({
		deprecation_date?: string
		description?:      string
		id?:               string
		latest?:           bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		prefix!:       string
		release_date?: string
		version?:      string
		version_name?: string
	})
}
