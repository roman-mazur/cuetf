package data

#azurerm_automation_variables: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_automation_variables")
	close({
		timeouts?:              #timeouts
		automation_account_id!: string
		"bool"?: [...close({
			description?: string
			encrypted?:   bool
			id?:          string
			name?:        string
			value?:       bool
		})]
		datetime?: [...close({
			description?: string
			encrypted?:   bool
			id?:          string
			name?:        string
			value?:       string
		})]
		encrypted?: [...close({
			description?: string
			encrypted?:   bool
			id?:          string
			name?:        string
			value?:       string
		})]
		id?: string
		int?: [...close({
			description?: string
			encrypted?:   bool
			id?:          string
			name?:        string
			value?:       number
		})]
		null?: [...close({
			description?: string
			encrypted?:   bool
			id?:          string
			name?:        string
			value?:       string
		})]
		object?: [...close({
			description?: string
			encrypted?:   bool
			id?:          string
			name?:        string
			value?:       string
		})]
		"string"?: [...close({
			description?: string
			encrypted?:   bool
			id?:          string
			name?:        string
			value?:       string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
