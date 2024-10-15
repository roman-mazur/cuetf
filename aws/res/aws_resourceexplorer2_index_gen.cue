package res

#aws_resourceexplorer2_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_resourceexplorer2_index")
	arn?: string
	id?:  string
	tags?: [string]:     string
	tags_all?: [string]: string
	type!:     string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
