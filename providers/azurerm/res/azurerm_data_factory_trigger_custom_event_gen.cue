package res

#azurerm_data_factory_trigger_custom_event: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_trigger_custom_event")
	close({
		pipeline!: matchN(1, [#pipeline, [_, ...] & [...#pipeline]])
		timeouts?:  #timeouts
		activated?: bool
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!:    string
		description?:        string
		eventgrid_topic_id!: string
		events!: [...string]
		id?:                  string
		name!:                string
		subject_begins_with?: string
		subject_ends_with?:   string
	})

	#pipeline: close({
		name!: string
		parameters?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
