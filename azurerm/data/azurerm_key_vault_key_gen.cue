package data

#azurerm_key_vault_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_key_vault_key")
	close({
		curve?: string
		e?:     string
		id?:    string
		key_opts?: [...string]
		key_size?:                number
		key_type?:                string
		key_vault_id!:            string
		n?:                       string
		name!:                    string
		public_key_openssh?:      string
		public_key_pem?:          string
		resource_id?:             string
		resource_versionless_id?: string
		tags?: [string]: string
		version?:        string
		timeouts?:       #timeouts
		versionless_id?: string
		x?:              string
		y?:              string
	})

	#timeouts: close({
		read?: string
	})
}
