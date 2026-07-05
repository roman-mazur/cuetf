package data

azurerm_oracle_gi_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_oracle_gi_versions")
	close({
		timeouts?: #timeouts
		id?:       string

		// Filter the versions by system shape. Possible values are 'ExaDbXS',
		// 'Exadata.X9M', and 'Exadata.X11M'.
		shape?:    string
		location!: string

		// Filter the versions by zone
		zone?: string
		versions?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
