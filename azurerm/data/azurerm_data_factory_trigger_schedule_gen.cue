package data

#azurerm_data_factory_trigger_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_trigger_schedule")
	close({
		activated?: bool
		annotations?: [...string]
		data_factory_id!: string
		description?:     string
		end_time?:        string
		frequency?:       string
		id?:              string
		interval?:        number
		timeouts?:        #timeouts
		name!:            string
		pipeline_name?:   string
		schedule?: [...close({
			days_of_month?: [...number]
			days_of_week?: [...string]
			hours?: [...number]
			minutes?: [...number]
			monthly?: [...close({
				week?:    number
				weekday?: string
			})]
		})]
		start_time?: string
		time_zone?:  string
	})

	#timeouts: close({
		read?: string
	})
}
