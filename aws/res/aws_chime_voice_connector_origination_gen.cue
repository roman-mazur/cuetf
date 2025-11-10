package res

import "list"

#aws_chime_voice_connector_origination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chime_voice_connector_origination")
	close({
		disabled?: bool
		id?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		voice_connector_id!: string
		route!: matchN(1, [#route, list.MaxItems(20) & [_, ...] & [...#route]])
	})

	#route: close({
		host!:     string
		port?:     number
		priority!: number
		protocol!: string
		weight!:   number
	})
}
