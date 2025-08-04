package res

#cloudflare_dns_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_record")
	close({
		comment?:             string
		comment_modified_on?: string
		content?:             string
		created_on?:          string
		id?:                  string
		meta?:                string
		modified_on?:         string
		data?: close({
			algorithm?:      number
			altitude?:       number
			certificate?:    string
			digest?:         string
			digest_type?:    number
			fingerprint?:    string
			flags?:          number
			key_tag?:        number
			lat_degrees?:    number
			lat_direction?:  string
			lat_minutes?:    number
			lat_seconds?:    number
			long_degrees?:   number
			long_direction?: string
			long_minutes?:   number
			long_seconds?:   number
			matching_type?:  number
			order?:          number
			port?:           number
			precision_horz?: number
			precision_vert?: number
			preference?:     number
			priority?:       number
			protocol?:       number
			public_key?:     string
			regex?:          string
			replacement?:    string
			selector?:       number
			service?:        string
			size?:           number
			tag?:            string
			target?:         string
			type?:           number
			usage?:          number
			value?:          string
			weight?:         number
		})
		name!:      string
		priority?:  number
		proxiable?: bool
		proxied?:   bool
		tags?: [...string]
		tags_modified_on?: string
		ttl!:              number
		type!:             string
		settings?: close({
			flatten_cname?: bool
			ipv4_only?:     bool
			ipv6_only?:     bool
		})
		zone_id!: string
	})
}
