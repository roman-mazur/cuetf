package res

#aws_bedrock_inference_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrock_inference_profile")
	close({
		arn?:        string
		created_at?: string
		model_source?: matchN(1, [#model_source, [...#model_source]])
		timeouts?:    #timeouts
		description?: string
		id?:          string
		models?: [...close({
			model_arn?: string
		})]
		name!:   string
		region?: string
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:       string
		updated_at?: string
	})

	#model_source: close({
		copy_from!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
