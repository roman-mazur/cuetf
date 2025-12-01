package res

import "list"

#aws_xray_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_xray_group")
	close({
		arn?:               string
		filter_expression!: string
		group_name!:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		tags?: [string]:     string
		tags_all?: [string]: string
		insights_configuration?: matchN(1, [#insights_configuration, list.MaxItems(1) & [...#insights_configuration]])
	})

	#insights_configuration: close({
		insights_enabled!:      bool
		notifications_enabled?: bool
	})
}
