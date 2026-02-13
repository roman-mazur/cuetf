package data

#azurerm_oracle_database_system_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_oracle_database_system_versions")
	close({
		database_software_image_supported?: bool

		// A list of available Oracle Database versions and their
		// properties.
		versions?: [...close({
			latest_version?:               bool
			name?:                         string
			pluggable_database_supported?: bool
			version?:                      string
		})]
		database_system_shape?: string
		id?:                    string
		location!:              string
		shape_family?:          string
		storage_management?:    string
		upgrade_supported?:     bool
		timeouts?:              #timeouts
	})

	#timeouts: close({
		read?: string
	})
}
