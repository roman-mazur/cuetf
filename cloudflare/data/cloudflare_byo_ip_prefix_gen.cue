package data

#cloudflare_byo_ip_prefix: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_byo_ip_prefix")
	close({
		account_id!:             string
		advertised?:             bool
		advertised_modified_at?: string
		approved?:               string
		asn?:                    number
		cidr?:                   string
		created_at?:             string
		description?:            string
		id?:                     string
		loa_document_id?:        string
		modified_at?:            string
		on_demand_enabled?:      bool
		on_demand_locked?:       bool
		prefix_id?:              string
	})
}
