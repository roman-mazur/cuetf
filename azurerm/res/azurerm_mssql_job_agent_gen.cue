package res

import "list"

#azurerm_mssql_job_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_job_agent")
	close({
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		database_id!: string
		id?:          string
		location!:    string
		name!:        string
		sku?:         string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
