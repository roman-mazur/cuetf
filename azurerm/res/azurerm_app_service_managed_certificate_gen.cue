package res

#azurerm_app_service_managed_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_app_service_managed_certificate")
	close({
		canonical_name?:             string
		custom_hostname_binding_id!: string
		expiration_date?:            string
		friendly_name?:              string
		host_names?: [...string]
		id?:           string
		issue_date?:   string
		issuer?:       string
		subject_name?: string
		timeouts?:     #timeouts
		tags?: [string]: string
		thumbprint?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
