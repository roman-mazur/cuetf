package res

#cloudflare_cloud_connector_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_cloud_connector_rules")
	zone_id!: string
	rules?: #rules | [...#rules]

	#rules: {
		description?: string
		enabled?:     bool
		expression!:  string
		provider!:    string
		parameters?:  #rules.#parameters

		#parameters: host!: string
	}
}
