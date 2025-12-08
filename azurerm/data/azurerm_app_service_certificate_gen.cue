package data

#azurerm_app_service_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_app_service_certificate")
	close({
		expiration_date?: string
		friendly_name?:   string
		host_names?: [...string]
		id?:                  string
		issue_date?:          string
		issuer?:              string
		location?:            string
		name!:                string
		timeouts?:            #timeouts
		resource_group_name!: string
		subject_name?:        string
		tags?: [string]: string
		thumbprint?: string
	})

	#timeouts: close({
		read?: string
	})
}
