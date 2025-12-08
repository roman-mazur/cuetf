package res

#azurerm_gallery_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_gallery_application")
	close({
		description?:           string
		end_of_life_date?:      string
		eula?:                  string
		gallery_id!:            string
		id?:                    string
		location!:              string
		name!:                  string
		privacy_statement_uri?: string
		release_note_uri?:      string
		timeouts?:              #timeouts
		supported_os_type!:     string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
