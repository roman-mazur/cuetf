package data

#aws_outposts_outpost: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_outposts_outpost")
	close({
		arn?:                  string
		availability_zone?:    string
		availability_zone_id?: string
		description?:          string
		id?:                   string
		lifecycle_status?:     string
		name?:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		owner_id?:                string
		site_arn?:                string
		site_id?:                 string
		supported_hardware_type?: string
		tags?: [string]: string
	})
}
