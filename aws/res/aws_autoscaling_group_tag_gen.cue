package res

import "list"

#aws_autoscaling_group_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_autoscaling_group_tag")
	close({
		tag!: matchN(1, [#tag, list.MaxItems(1) & [_, ...] & [...#tag]])
		autoscaling_group_name!: string
		id?:                     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#tag: close({
		key!:                 string
		propagate_at_launch!: bool
		value!:               string
	})
}
