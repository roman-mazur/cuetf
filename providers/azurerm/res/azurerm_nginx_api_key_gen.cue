package res

#azurerm_nginx_api_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_nginx_api_key")
	close({
		timeouts?:            #timeouts
		end_date_time!:       string
		hint?:                string
		id?:                  string
		name!:                string
		nginx_deployment_id!: string
		secret_text!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
