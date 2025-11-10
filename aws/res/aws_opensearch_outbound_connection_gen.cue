package res

import "list"

#aws_opensearch_outbound_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearch_outbound_connection")
	close({
		accept_connection?: bool
		connection_properties?: matchN(1, [#connection_properties, list.MaxItems(1) & [...#connection_properties]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		connection_alias!:  string
		connection_mode?:   string
		connection_status?: string
		id?:                string
		local_domain_info!: matchN(1, [#local_domain_info, list.MaxItems(1) & [_, ...] & [...#local_domain_info]])
		remote_domain_info!: matchN(1, [#remote_domain_info, list.MaxItems(1) & [_, ...] & [...#remote_domain_info]])
		timeouts?: #timeouts
	})

	#connection_properties: close({
		cross_cluster_search?: matchN(1, [_#defs."/$defs/connection_properties/$defs/cross_cluster_search", list.MaxItems(1) & [..._#defs."/$defs/connection_properties/$defs/cross_cluster_search"]])
		endpoint?: string
	})

	#local_domain_info: close({
		domain_name!: string
		owner_id!:    string
		region!:      string
	})

	#remote_domain_info: close({
		domain_name!: string
		owner_id!:    string
		region!:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/connection_properties/$defs/cross_cluster_search": close({
		skip_unavailable?: string
	})
}
