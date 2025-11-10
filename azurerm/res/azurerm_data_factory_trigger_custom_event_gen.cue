package res

#azurerm_data_factory_trigger_custom_event: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_trigger_custom_event")
	close({
		activated?: bool
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!:    string
		description?:        string
		eventgrid_topic_id!: string
		pipeline!: matchN(1, [#pipeline, [_, ...] & [...#pipeline]])
		events!: [...string]
		id?:                  string
		timeouts?:            #timeouts
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
