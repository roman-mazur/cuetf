package res

import "list"

#aws_chime_voice_connector_streaming: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chime_voice_connector_streaming")
	close({
		media_insights_configuration?: matchN(1, [#media_insights_configuration, list.MaxItems(1) & [...#media_insights_configuration]])
		data_retention!: number
		disabled?:       bool
		id?:             string
		region?:         string
		streaming_notification_targets?: [...string]
		voice_connector_id!: string
	})

	#media_insights_configuration: close({
		configuration_arn?: string
		disabled?:          bool
	})
}
