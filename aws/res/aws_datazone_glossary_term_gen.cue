package res

#aws_datazone_glossary_term: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_glossary_term")
	close({
		created_at?: string
		created_by?: string
		term_relations?: matchN(1, [#term_relations, [...#term_relations]])
		timeouts?:            #timeouts
		domain_identifier?:   string
		glossary_identifier!: string
		id?:                  string
		long_description?:    string
		name!:                string
		region?:              string
		short_description?:   string
		status?:              string
	})

	#term_relations: close({
		classifies?: [...string]
		is_a?: [...string]
	})

	#timeouts: close({
		create?: string
	})
}
