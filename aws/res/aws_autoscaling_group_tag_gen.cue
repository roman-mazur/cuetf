package res

import "list"

#aws_autoscaling_group_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_autoscaling_group_tag")
	autoscaling_group_name!: string
	id?:                     string
	tag?: #tag | list.MaxItems(1) & [_, ...] & [...#tag]

	#tag: {
		key!:                 string
		propagate_at_launch!: bool
		value!:               string
	}
}
