package data

#aws_odb_gi_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_odb_gi_versions")
	close({
		// Information about a specific version of Oracle Grid
		// Infrastructure (GI) software that can be installed on a VM
		// cluster.
		gi_versions?: [...close({
			version?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The system shape.
		shape?: string
	})
}
