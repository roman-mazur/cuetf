package data

#aws_location_tracker: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_location_tracker")
	close({
		create_time?:        string
		description?:        string
		id?:                 string
		kms_key_id?:         string
		position_filtering?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]: string
		tracker_arn?:  string
		tracker_name!: string
		update_time?:  string
	})
}
