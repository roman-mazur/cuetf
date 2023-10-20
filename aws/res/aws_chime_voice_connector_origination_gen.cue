package res

import "list"

#aws_chime_voice_connector_origination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_chime_voice_connector_origination")
	disabled?:          bool
	id?:                string
	voice_connector_id: string
	route?:             #route | list.MaxItems(20) & [_, ...] & [...#route]

	#route: {
		host:     string
		port?:    number
		priority: number
		protocol: string
		weight:   number
	}
}
