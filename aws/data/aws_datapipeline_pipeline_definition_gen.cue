package data

#aws_datapipeline_pipeline_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datapipeline_pipeline_definition")
	close({
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		parameter_object?: [...close({
			attribute?: [...close({
				key?:          string
				string_value?: string
			})]
			id?: string
		})]
		pipeline_id!: string
		pipeline_object?: [...close({
			field?: [...close({
				key?:          string
				ref_value?:    string
				string_value?: string
			})]
			id?:   string
			name?: string
		})]
		parameter_value?: matchN(1, [#parameter_value, [...#parameter_value]])
	})

	#parameter_value: close({
		id?:           string
		string_value?: string
	})
}
