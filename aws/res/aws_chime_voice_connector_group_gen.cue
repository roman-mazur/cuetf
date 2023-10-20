package res

import "list"

#aws_chime_voice_connector_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_chime_voice_connector_group")
	id?:        string
	name:       string
	connector?: #connector | list.MaxItems(3) & [...#connector]

	#connector: {
		priority:           number
		voice_connector_id: string
	}
}
