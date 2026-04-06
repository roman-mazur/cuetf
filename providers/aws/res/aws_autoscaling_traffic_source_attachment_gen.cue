package res

import "list"

#aws_autoscaling_traffic_source_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_autoscaling_traffic_source_attachment")
	close({
		timeouts?: #timeouts
		traffic_source?: matchN(1, [#traffic_source, list.MaxItems(1) & [...#traffic_source]])
		autoscaling_group_name!: string
		id?:                     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	#traffic_source: close({
		identifier!: string
		type!:       string
	})
}
