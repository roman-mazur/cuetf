package res

#google_managed_kafka_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_managed_kafka_acl")
	close({
		// The ID to use for the acl, which will become the final
		// component of the acl's name. The structure of 'aclId' defines
		// the Resource Pattern (resource_type, resource_name,
		// pattern_type) of the acl. 'aclId' is structured like one of
		// the following:
		// For acls on the cluster: 'cluster'
		// For acls on a single resource within the cluster:
		// 'topic/{resource_name}' 'consumerGroup/{resource_name}'
		// 'transactionalId/{resource_name}'
		// For acls on all resources that match a prefix:
		// 'topicPrefixed/{resource_name}'
		// 'consumerGroupPrefixed/{resource_name}'
		// 'transactionalIdPrefixed/{resource_name}'
		// For acls on all resources of a given type (i.e. the wildcard
		// literal '*''): 'allTopics' (represents 'topic/*')
		// 'allConsumerGroups' (represents 'consumerGroup/*')
		// 'allTransactionalIds' (represents 'transactionalId/*').
		acl_id!: string

		// The cluster name.
		cluster!: string

		// 'etag' is used for concurrency control. An 'etag' is returned
		// in the
		// response to 'GetAcl' and 'CreateAcl'. Callers are required to
		// put that etag
		// in the request to 'UpdateAcl' to ensure that their change will
		// be applied
		// to the same version of the acl that exists in the Kafka
		// Cluster.
		//
		// A terminal 'T' character in the etag indicates that the
		// AclEntries were
		// truncated due to repeated field limits.
		etag?: string
		id?:   string

		// ID of the location of the Kafka resource. See
		// https://cloud.google.com/managed-kafka/docs/locations for a
		// list of supported locations.
		location!: string

		// The name of the acl. The 'ACL_ID' segment is used when
		// connecting directly to the cluster. Must be in the format
		// 'projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID/acls/ACL_ID'.
		name?: string

		// The acl pattern type derived from the name. One of: LITERAL,
		// PREFIXED.
		pattern_type?: string
		acl_entries!: matchN(1, [#acl_entries, [_, ...] & [...#acl_entries]])
		timeouts?: #timeouts
		project?:  string

		// The acl resource name derived from the name. For cluster
		// resource_type, this is always "kafka-cluster". Can be the
		// wildcard literal "*".
		resource_name?: string

		// The acl resource type derived from the name. One of: CLUSTER,
		// TOPIC, GROUP, TRANSACTIONAL_ID.
		resource_type?: string
	})

	#acl_entries: close({
		// The host. Must be set to "*" for Managed Service for Apache
		// Kafka.
		host?: string

		// The operation type. Allowed values are (case insensitive): ALL,
		// READ,
		// WRITE, CREATE, DELETE, ALTER, DESCRIBE, CLUSTER_ACTION,
		// DESCRIBE_CONFIGS,
		// ALTER_CONFIGS, and IDEMPOTENT_WRITE. See
		// https://kafka.apache.org/documentation/#operations_resources_and_protocols
		// for valid combinations of resource_type and operation for
		// different Kafka API requests.
		operation!: string

		// The permission type. Accepted values are (case insensitive):
		// ALLOW, DENY.
		permission_type?: string

		// The principal. Specified as Google Cloud account, with the
		// Kafka StandardAuthorizer prefix User:". For example:
		// "User:test-kafka-client@test-project.iam.gserviceaccount.com".
		// Can be the wildcard "User:*" to refer to all users.
		principal!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
