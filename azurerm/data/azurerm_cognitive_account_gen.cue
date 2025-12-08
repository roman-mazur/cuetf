package data

#azurerm_cognitive_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_cognitive_account")
	close({
		endpoint?: string
		id?:       string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		kind?:                 string
		local_auth_enabled?:   bool
		location?:             string
		name!:                 string
		primary_access_key?:   string
		timeouts?:             #timeouts
		qna_runtime_endpoint?: string
		resource_group_name!:  string
		secondary_access_key?: string
		sku_name?:             string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
