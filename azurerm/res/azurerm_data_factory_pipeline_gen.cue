package res

#azurerm_data_factory_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_pipeline")
	close({
		activities_json?: string
		annotations?: [...string]
		concurrency?:                    number
		data_factory_id!:                string
		description?:                    string
		folder?:                         string
		id?:                             string
		moniter_metrics_after_duration?: string
		name!:                           string
		timeouts?:                       #timeouts
		parameters?: [string]: string
		variables?: [string]:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
