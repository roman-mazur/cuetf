package data

#azurerm_oracle_gi_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_oracle_gi_versions")
	close({
		// Filter the versions by system shape. Possible values are
		// 'ExaDbXS', 'Exadata.X9M', and 'Exadata.X11M'.
		shape?: string
		id?:    string

		// Filter the versions by zone
		zone?:     string
		location!: string
		versions?: [...string]
		timeouts?: #timeouts
	})

	#timeouts: close({
		read?: string
	})
}
