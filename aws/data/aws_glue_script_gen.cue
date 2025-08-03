package data

#aws_glue_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_script")
	close({
		id?: string
		dag_edge?: matchN(1, [#dag_edge, [_, ...] & [...#dag_edge]])
		dag_node?: matchN(1, [#dag_node, [_, ...] & [...#dag_node]])
		language?:      string
		python_script?: string
		region?:        string
		scala_code?:    string
	})

	#dag_edge: close({
		source!:           string
		target!:           string
		target_parameter?: string
	})

	#dag_node: close({
		id!:          string
		line_number?: number
		node_type!:   string
		args?: matchN(1, [_#defs."/$defs/dag_node/$defs/args", [_, ...] & [..._#defs."/$defs/dag_node/$defs/args"]])
	})

	_#defs: "/$defs/dag_node/$defs/args": close({
		name!:  string
		param?: bool
		value!: string
	})
}
