package res

import "list"

#aws_opensearch_outbound_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opensearch_outbound_connection")
	accept_connection?:     bool
	connection_alias:       string
	connection_mode?:       string
	connection_status?:     string
	id?:                    string
	connection_properties?: #connection_properties | list.MaxItems(1) & [...#connection_properties]
	local_domain_info?:     #local_domain_info | list.MaxItems(1) & [_, ...] & [...#local_domain_info]
	remote_domain_info?:    #remote_domain_info | list.MaxItems(1) & [_, ...] & [...#remote_domain_info]
	timeouts?:              #timeouts

	#connection_properties: {
		endpoint?:             string
		cross_cluster_search?: #connection_properties.#cross_cluster_search | list.MaxItems(1) & [...#connection_properties.#cross_cluster_search]

		#cross_cluster_search: skip_unavailable?: string
	}

	#local_domain_info: {
		domain_name: string
		owner_id:    string
		region:      string
	}

	#remote_domain_info: {
		domain_name: string
		owner_id:    string
		region:      string
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
