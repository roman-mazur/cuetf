package data

#aws_outposts_asset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_outposts_asset")
	close({
		arn!:        string
		asset_id!:   string
		asset_type?: string
		host_id?:    string
		id?:         string
		instance_families?: [...string]
		rack_elevation?: number
		rack_id?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
