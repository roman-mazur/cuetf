package res

#aws_datazone_form_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_form_type")
	close({
		created_at?: string
		created_by?: string
		model?: matchN(1, [#model, [...#model]])
		timeouts?:          #timeouts
		description?:       string
		domain_identifier!: string
		imports?: [...close({
			name?:     string
			revision?: string
		})]
		name!:                      string
		origin_domain_id?:          string
		origin_project_id?:         string
		owning_project_identifier!: string
		region?:                    string
		revision?:                  string
		status?:                    string
	})

	#model: close({
		smithy!: string
	})

	#timeouts: close({
		create?: string
	})
}
