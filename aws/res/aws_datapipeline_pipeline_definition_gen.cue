package res

#aws_datapipeline_pipeline_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datapipeline_pipeline_definition")
	id?:          string
	pipeline_id!: string
	parameter_object?: #parameter_object | [...#parameter_object]
	parameter_value?: #parameter_value | [...#parameter_value]
	pipeline_object?: #pipeline_object | [_, ...] & [...#pipeline_object]

	#parameter_object: {
		id!: string
		attribute?: #parameter_object.#attribute | [...#parameter_object.#attribute]

		#attribute: {
			key!:          string
			string_value!: string
		}
	}

	#parameter_value: {
		id!:           string
		string_value!: string
	}

	#pipeline_object: {
		id!:   string
		name!: string
		field?: #pipeline_object.#field | [...#pipeline_object.#field]

		#field: {
			key!:          string
			ref_value?:    string
			string_value?: string
		}
	}
}
