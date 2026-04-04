package res

import "list"

#aws_chime_voice_connector_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_chime_voice_connector_group")
	close({
		connector?: matchN(1, [#connector, list.MaxItems(3) & [...#connector]])
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#connector: close({
		priority!:           number
		voice_connector_id!: string
	})
}
