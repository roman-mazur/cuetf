package res

#azurerm_logic_app_action_http: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_logic_app_action_http")
	close({
		run_after?: matchN(1, [#run_after, [...#run_after]])
		body?: string
		headers?: [string]: string
		id?:           string
		logic_app_id!: string
		method!:       string
		name!:         string
		queries?: [string]: string
		uri!:      string
		timeouts?: #timeouts
	})

	#run_after: close({
		action_name!:   string
		action_result!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
