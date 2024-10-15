package res

#aws_athena_prepared_statement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_athena_prepared_statement")
	description?:     string
	id?:              string
	name!:            string
	query_statement!: string
	workgroup!:       string
	timeouts?:        #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
