package data

#aws_lex_slot_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lex_slot_type")
	close({
		checksum?:     string
		created_date?: string
		description?:  string
		enumeration_value?: [...close({
			synonyms?: [...string]
			value?: string
		})]
		id?:                       string
		last_updated_date?:        string
		name!:                     string
		region?:                   string
		value_selection_strategy?: string
		version?:                  string
	})
}
