package data

#aws_glue_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_script")
	id?:            string
	language?:      string
	python_script?: string
	scala_code?:    string
	dag_edge?: #dag_edge | [_, ...] & [...#dag_edge]
	dag_node?: #dag_node | [_, ...] & [...#dag_node]

	#dag_edge: {
		source!:           string
		target!:           string
		target_parameter?: string
	}

	#dag_node: {
		id!:          string
		line_number?: number
		node_type!:   string
		args?: #dag_node.#args | [_, ...] & [...#dag_node.#args]

		#args: {
			name!:  string
			param?: bool
			value!: string
		}
	}
}
