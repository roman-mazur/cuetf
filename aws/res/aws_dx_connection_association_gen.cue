package res

#aws_dx_connection_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_connection_association")
	connection_id!: string
	id?:            string
	lag_id!:        string
}
