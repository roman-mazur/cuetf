package res

import "list"

#azurerm_network_function_collector_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_function_collector_policy")
	close({
		id?: string
		ipfx_emission!: matchN(1, [#ipfx_emission, list.MaxItems(1) & [_, ...] & [...#ipfx_emission]])
		location!: string
		name!:     string
		tags?: [string]: string
		traffic_collector_id!: string
		ipfx_ingestion!: matchN(1, [#ipfx_ingestion, list.MaxItems(1) & [_, ...] & [...#ipfx_ingestion]])
		timeouts?: #timeouts
	})

	#ipfx_emission: close({
		destination_types!: [...string]
	})

	#ipfx_ingestion: close({
		source_resource_ids!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
