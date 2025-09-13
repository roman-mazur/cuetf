package data

#google_dns_keys: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dns_keys")
	close({
		id?: string
		key_signing_keys?: [...close({
			algorithm?:     string
			creation_time?: string
			description?:   string
			digests?: [...close({
				digest?: string
				type?:   string
			})]
			ds_record?:  string
			id?:         string
			is_active?:  bool
			key_length?: number
			key_tag?:    number
			public_key?: string
		})]
		managed_zone!: string
		project?:      string
		zone_signing_keys?: [...close({
			algorithm?:     string
			creation_time?: string
			description?:   string
			digests?: [...close({
				digest?: string
				type?:   string
			})]
			id?:         string
			is_active?:  bool
			key_length?: number
			key_tag?:    number
			public_key?: string
		})]
	})
}
