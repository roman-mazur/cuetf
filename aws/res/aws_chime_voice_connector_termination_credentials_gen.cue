package res

import "list"

#aws_chime_voice_connector_termination_credentials: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_chime_voice_connector_termination_credentials")
	id?:                string
	voice_connector_id: string
	credentials?:       #credentials | list.MaxItems(10) & [_, ...] & [...#credentials]

	#credentials: {
		password: string
		username: string
	}
}
