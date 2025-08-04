package data

#cloudflare_magic_transit_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_transit_site")
	close({
		account_id!:   string
		connector_id?: string
		description?:  string
		ha_mode?:      bool
		filter?: close({
			connectorid?: string
		})
		id?:   string
		name?: string
		location?: close({
			lat?: string
			lon?: string
		})
		secondary_connector_id?: string
		site_id?:                string
	})
}
