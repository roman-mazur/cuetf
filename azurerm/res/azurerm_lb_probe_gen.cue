package res

#azurerm_lb_probe: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_lb_probe")
	close({
		timeouts?:            #timeouts
		id?:                  string
		interval_in_seconds?: number
		load_balancer_rules?: [...string]
		loadbalancer_id!:  string
		name!:             string
		number_of_probes?: number
		port!:             number
		probe_threshold?:  number
		protocol?:         string
		request_path?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
