package res

#aws_detective_graph: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_detective_graph")
	created_time?: string
	graph_arn?:    string
	id?:           string
	tags?: [string]:     string
	tags_all?: [string]: string
}
