package res

import "list"

#aws_iot_thing_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iot_thing_group")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		arn?:    string
		id?:     string
		metadata?: [...close({
			creation_date?:     string
			parent_group_name?: string
			root_to_parent_groups?: [...close({
				group_arn?:  string
				group_name?: string
			})]
		})]
		name!:              string
		parent_group_name?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		version?: number
		properties?: matchN(1, [#properties, list.MaxItems(1) & [...#properties]])
	})

	#properties: close({
		attribute_payload?: matchN(1, [_#defs."/$defs/properties/$defs/attribute_payload", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/attribute_payload"]])
		description?: string
	})

	_#defs: "/$defs/properties/$defs/attribute_payload": close({
		attributes?: [string]: string
	})
}
