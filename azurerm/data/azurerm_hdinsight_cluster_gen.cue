package data

#azurerm_hdinsight_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_hdinsight_cluster")
	close({
		cluster_id?:      string
		cluster_version?: string
		component_versions?: [string]: string
		edge_ssh_endpoint?: string
		gateway?: [...close({
			enabled?:  bool
			password?: string
			username?: string
		})]
		https_endpoint?:            string
		id?:                        string
		kafka_rest_proxy_endpoint?: string
		kind?:                      string
		timeouts?:                  #timeouts
		location?:                  string
		name!:                      string
		resource_group_name!:       string
		ssh_endpoint?:              string
		tags?: [string]: string
		tier?:            string
		tls_min_version?: string
	})

	#timeouts: close({
		read?: string
	})
}
