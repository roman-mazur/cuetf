package data

#cloudflare_api_shield: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_shield")
	close({
		auth_id_characteristics?: matchN(1, [close({
			name?: string
			type?: string
		}), [...close({
			name?: string
			type?: string
		})]])
		properties?: [...string]
		zone_id!: string
	})
}
