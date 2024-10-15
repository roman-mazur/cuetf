package res

#cloudflare_api_shield: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_shield")
	id?:      string
	zone_id!: string
	auth_id_characteristics?: #auth_id_characteristics | [...#auth_id_characteristics]

	#auth_id_characteristics: {
		name?: string
		type?: string
	}
}
