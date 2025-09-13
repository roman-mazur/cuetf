package res

import "list"

#google_redis_cluster_user_created_connections: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_redis_cluster_user_created_connections")
	close({
		id?: string

		// The name of the Redis cluster these endpoints should be added
		// to.
		name!:    string
		project?: string

		// The name of the region of the Redis cluster these endpoints
		// should be added to.
		region!: string
		cluster_endpoints?: matchN(1, [#cluster_endpoints, [...#cluster_endpoints]])
		timeouts?: #timeouts
	})

	#cluster_endpoints: close({
		connections?: matchN(1, [_#defs."/$defs/cluster_endpoints/$defs/connections", [..._#defs."/$defs/cluster_endpoints/$defs/connections"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/cluster_endpoints/$defs/connections": close({
		psc_connection?: matchN(1, [_#defs."/$defs/cluster_endpoints/$defs/connections/$defs/psc_connection", list.MaxItems(1) & [..._#defs."/$defs/cluster_endpoints/$defs/connections/$defs/psc_connection"]])
	})

	_#defs: "/$defs/cluster_endpoints/$defs/connections/$defs/psc_connection": close({
		// The IP allocated on the consumer network for the PSC forwarding
		// rule.
		address!: string

		// Output Only. Type of a PSC Connection.
		// Possible values:
		// CONNECTION_TYPE_DISCOVERY
		// CONNECTION_TYPE_PRIMARY
		// CONNECTION_TYPE_READER
		connection_type?: string

		// The URI of the consumer side forwarding rule.
		// Format:
		// projects/{project}/regions/{region}/forwardingRules/{forwarding_rule}
		forwarding_rule!: string

		// The consumer network where the IP address resides, in the form
		// of
		// projects/{project_id}/global/networks/{network_id}.
		network!: string

		// The consumer project_id where the forwarding rule is created
		// from.
		project_id?: string

		// The PSC connection id of the forwarding rule connected to the
		// service attachment.
		psc_connection_id!: string

		// Output Only. The status of the PSC connection: whether a
		// connection exists and ACTIVE or it no longer exists.
		// Possible values:
		// ACTIVE
		// NOT_FOUND
		psc_connection_status?: string

		// The service attachment which is the target of the PSC
		// connection, in the form of
		// projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
		service_attachment!: string
	})
}
