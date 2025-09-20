package res

#azurerm_vmware_netapp_volume_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_vmware_netapp_volume_attachment")
	close({
		timeouts?:          #timeouts
		id?:                string
		name!:              string
		netapp_volume_id!:  string
		vmware_cluster_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
