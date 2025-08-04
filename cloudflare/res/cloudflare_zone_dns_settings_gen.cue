package res

#cloudflare_zone_dns_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_dns_settings")
	close({
		flatten_all_cnames?: bool
		foundation_dns?:     bool
		multi_provider?:     bool
		internal_dns?: close({
			reference_zone_id?: string
		})
		ns_ttl?:              number
		secondary_overrides?: bool
		nameservers?: close({
			ns_set?: number
			type!:   string
		})
		zone_id!: string
		soa?: close({
			expire!:  number
			min_ttl!: number
			mname!:   string
			refresh!: number
			retry!:   number
			rname!:   string
			ttl!:     number
		})
		zone_mode?: string
	})
}
