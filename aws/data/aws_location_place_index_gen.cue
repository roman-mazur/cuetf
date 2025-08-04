package data

#aws_location_place_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_location_place_index")
	close({
		create_time?: string
		data_source?: string
		data_source_configuration?: [...close({
			intended_use?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		description?: string
		id?:          string
		index_arn?:   string
		index_name!:  string
		tags?: [string]: string
		update_time?: string
	})
}
