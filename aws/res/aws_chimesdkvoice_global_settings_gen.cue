package res

import "list"

#aws_chimesdkvoice_global_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_chimesdkvoice_global_settings")
	id?: string
	voice_connector?: #voice_connector | list.MaxItems(1) & [_, ...] & [...#voice_connector]

	#voice_connector: cdr_bucket?: string
}
