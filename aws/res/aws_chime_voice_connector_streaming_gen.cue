package res

import "list"

#aws_chime_voice_connector_streaming: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_chime_voice_connector_streaming")
	data_retention!: number
	disabled?:       bool
	id?:             string
	streaming_notification_targets?: [...string]
	voice_connector_id!: string
	media_insights_configuration?: #media_insights_configuration | list.MaxItems(1) & [...#media_insights_configuration]

	#media_insights_configuration: {
		configuration_arn?: string
		disabled?:          bool
	}
}
