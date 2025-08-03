package res

import "list"

#aws_chimesdkvoice_global_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chimesdkvoice_global_settings")
	close({
		id?: string
		voice_connector?: matchN(1, [#voice_connector, list.MaxItems(1) & [_, ...] & [...#voice_connector]])
	})

	#voice_connector: close({
		cdr_bucket?: string
	})
}
