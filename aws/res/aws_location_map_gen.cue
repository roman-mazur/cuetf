package res

import "list"

#aws_location_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_location_map")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		create_time?: string
		description?: string
		id?:          string
		map_arn?:     string
		map_name!:    string
		tags?: [string]:     string
		tags_all?: [string]: string
		update_time?: string
		configuration!: matchN(1, [#configuration, list.MaxItems(1) & [_, ...] & [...#configuration]])
	})

	#configuration: close({
		style!: string
	})
}
