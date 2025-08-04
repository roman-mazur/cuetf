package res

import "list"

#aws_lex_slot_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lex_slot_type")
	close({
		checksum?:          string
		create_version?:    bool
		created_date?:      string
		description?:       string
		id?:                string
		last_updated_date?: string
		name!:              string
		enumeration_value?: matchN(1, [#enumeration_value, list.MaxItems(10000) & [_, ...] & [...#enumeration_value]])
		region?:                   string
		timeouts?:                 #timeouts
		value_selection_strategy?: string
		version?:                  string
	})

	#enumeration_value: close({
		synonyms?: [...string]
		value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
