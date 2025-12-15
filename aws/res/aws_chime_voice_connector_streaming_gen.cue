package res

import "list"

#aws_chime_voice_connector_streaming: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_chime_voice_connector_streaming")
	close({
		data_retention!: number
		disabled?:       bool
		id?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		streaming_notification_targets?: [...string]
		voice_connector_id!: string
		media_insights_configuration?: matchN(1, [#media_insights_configuration, list.MaxItems(1) & [...#media_insights_configuration]])
	})

	#media_insights_configuration: close({
		configuration_arn?: string
		disabled?:          bool
	})
}
