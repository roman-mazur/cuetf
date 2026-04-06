package res

#azurerm_redis_enterprise_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_redis_enterprise_cluster")
	close({
		timeouts?:            #timeouts
		hostname?:            string
		id?:                  string
		location!:            string
		minimum_tls_version?: string
		name!:                string
		resource_group_name!: string
		sku_name!:            string
		tags?: [string]: string
		zones?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
