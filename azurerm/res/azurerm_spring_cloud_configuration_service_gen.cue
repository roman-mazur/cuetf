package res

#azurerm_spring_cloud_configuration_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_configuration_service")
	close({
		repository?: matchN(1, [#repository, [...#repository]])
		generation?:                  string
		id?:                          string
		name!:                        string
		refresh_interval_in_seconds?: number
		spring_cloud_service_id!:     string
		timeouts?:                    #timeouts
	})

	#repository: close({
		ca_certificate_id?:  string
		host_key?:           string
		host_key_algorithm?: string
		label!:              string
		name!:               string
		password?:           string
		patterns!: [...string]
		private_key?: string
		search_paths?: [...string]
		strict_host_key_checking?: bool
		uri!:                      string
		username?:                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
