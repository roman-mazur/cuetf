package res

#aws_datazone_asset_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_asset_type")
	close({
		forms_input?: matchN(1, [#forms_input, [...#forms_input]])
		created_at?:                string
		created_by?:                string
		description?:               string
		domain_identifier!:         string
		name!:                      string
		owning_project_identifier!: string
		region?:                    string
		revision?:                  string
		timeouts?:                  #timeouts
	})

	#forms_input: close({
		map_block_key!:   string
		required?:        bool
		type_identifier!: string
		type_revision!:   string
	})

	#timeouts: close({
		create?: string
	})
}
