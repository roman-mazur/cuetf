package res

import "list"

#aws_chime_voice_connector_termination_credentials: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chime_voice_connector_termination_credentials")
	close({
		id?:                 string
		region?:             string
		voice_connector_id!: string
		credentials?: matchN(1, [#credentials, list.MaxItems(10) & [_, ...] & [...#credentials]])
	})

	#credentials: close({
		password!: string
		username!: string
	})
}
