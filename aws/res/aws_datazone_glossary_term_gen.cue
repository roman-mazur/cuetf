package res

#aws_datazone_glossary_term: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_datazone_glossary_term")
	created_at?:          string
	created_by?:          string
	domain_identifier?:   string
	glossary_identifier!: string
	id?:                  string
	long_description?:    string
	name!:                string
	short_description?:   string
	status?:              string
	term_relations?: #term_relations | [...#term_relations]
	timeouts?: #timeouts

	#term_relations: {
		classifies?: [...string]
		is_a?: [...string]
	}

	#timeouts: create?: string
}
