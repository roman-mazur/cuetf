package res

#aws_datapipeline_pipeline_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datapipeline_pipeline_definition")
	close({
		parameter_object?: matchN(1, [#parameter_object, [...#parameter_object]])
		parameter_value?: matchN(1, [#parameter_value, [...#parameter_value]])
		pipeline_object?: matchN(1, [#pipeline_object, [_, ...] & [...#pipeline_object]])
		id?:          string
		pipeline_id!: string
		region?:      string
	})

	#parameter_object: close({
		attribute?: matchN(1, [_#defs."/$defs/parameter_object/$defs/attribute", [..._#defs."/$defs/parameter_object/$defs/attribute"]])
		id!: string
	})

	#parameter_value: close({
		id!:           string
		string_value!: string
	})

	#pipeline_object: close({
		field?: matchN(1, [_#defs."/$defs/pipeline_object/$defs/field", [..._#defs."/$defs/pipeline_object/$defs/field"]])
		id!:   string
		name!: string
	})

	_#defs: "/$defs/parameter_object/$defs/attribute": close({
		key!:          string
		string_value!: string
	})

	_#defs: "/$defs/pipeline_object/$defs/field": close({
		key!:          string
		ref_value?:    string
		string_value?: string
	})
}
