package res

#cloudflare_address_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_address_map")
	account_id:      string
	can_delete?:     bool
	can_modify_ips?: bool
	default_sni?:    string
	description?:    string
	enabled:         bool
	id?:             string
	ips?:            #ips | [...#ips]
	memberships?:    #memberships | [...#memberships]

	#ips: ip: string

	#memberships: {
		can_delete?: bool
		identifier:  string
		kind:        string
	}
}
