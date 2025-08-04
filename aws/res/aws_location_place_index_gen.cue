package res

import "list"

#aws_location_place_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_location_place_index")
	close({
		create_time?: string
		data_source!: string
		description?: string
		id?:          string
		index_arn?:   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		index_name!: string
		data_source_configuration?: matchN(1, [#data_source_configuration, list.MaxItems(1) & [...#data_source_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
		update_time?: string
	})

	#data_source_configuration: close({
		intended_use?: string
	})
}
