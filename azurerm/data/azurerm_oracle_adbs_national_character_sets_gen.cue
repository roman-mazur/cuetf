package data

#azurerm_oracle_adbs_national_character_sets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_oracle_adbs_national_character_sets")
	close({
		timeouts?: #timeouts
		character_sets?: [...close({
			character_set?: string
		})]
		id?:       string
		location!: string
	})

	#timeouts: close({
		read?: string
	})
}
