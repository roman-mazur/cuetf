package res

import "list"

#aws_chime_voice_connector_termination_credentials: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_chime_voice_connector_termination_credentials")
	close({
		credentials!: matchN(1, [#credentials, list.MaxItems(10) & [_, ...] & [...#credentials]])
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		voice_connector_id!: string
	})

	#credentials: close({
		password!: string
		username!: string
	})
}
