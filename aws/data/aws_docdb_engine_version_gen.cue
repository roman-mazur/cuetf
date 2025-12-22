package data

#aws_docdb_engine_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_docdb_engine_version")
	close({
		engine?:             string
		engine_description?: string
		exportable_log_types?: [...string]
		id?:                     string
		parameter_group_family?: string
		preferred_versions?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                             string
		supports_log_exports_to_cloudwatch?: bool
		valid_upgrade_targets?: [...string]
		version?:             string
		version_description?: string
	})
}
