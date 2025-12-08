package res

#azurerm_spring_cloud_app_mysql_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_app_mysql_association")
	close({
		timeouts?:            #timeouts
		database_name!:       string
		id?:                  string
		mysql_server_id!:     string
		name!:                string
		password!:            string
		spring_cloud_app_id!: string
		username!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
