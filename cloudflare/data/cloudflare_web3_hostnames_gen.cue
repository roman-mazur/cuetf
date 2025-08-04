package data

#cloudflare_web3_hostnames: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_web3_hostnames")
	close({
		max_items?: number
		result?: matchN(1, [close({
			created_on?:  string
			description?: string
			dnslink?:     string
			id?:          string
			modified_on?: string
			name?:        string
			status?:      string
			target?:      string
		}), [...close({
			created_on?:  string
			description?: string
			dnslink?:     string
			id?:          string
			modified_on?: string
			name?:        string
			status?:      string
			target?:      string
		})]])
		zone_id!: string
	})
}
