package data

#azurerm_dev_center_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_center_project")
	close({
		description?:    string
		dev_center_id?:  string
		dev_center_uri?: string
		id?:             string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:                   string
		maximum_dev_boxes_per_user?: number
		timeouts?:                   #timeouts
		name!:                       string
		resource_group_name!:        string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
