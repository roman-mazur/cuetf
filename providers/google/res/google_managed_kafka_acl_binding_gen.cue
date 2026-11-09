package res

google_managed_kafka_acl_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_managed_kafka_acl_binding")
	close({
		timeouts?: #timeouts

		// The ID of the acl this entry belongs to, which is the final component
		// of the acl's name. The structure of 'aclId' defines the Resource
		// Pattern (resource_type, resource_name, pattern_type) of the acl.
		// 'aclId' is structured like one of the following:
		// For acls on the cluster: 'cluster'
		// For acls on a single resource within the cluster: 'topic/{resource_name}'
		// 'consumerGroup/{resource_name}' 'transactionalId/{resource_name}'
		// For acls on all resources that match a prefix:
		// 'topicPrefixed/{resource_name}' 'consumerGroupPrefixed/{resource_name}'
		// 'transactionalIdPrefixed/{resource_name}'
		// For acls on all resources of a given type (i.e. the wildcard literal '*''):
		// 'allTopics' (represents 'topic/*') 'allConsumerGroups' (represents
		// 'consumerGroup/*') 'allTransactionalIds' (represents 'transactionalId/*').
		acl_id!: string

		// The cluster name.
		cluster!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The host. Must be set to "*" for Managed Service for Apache Kafka.
		host?: string
		id?:   string

		// ID of the location of the Kafka resource. See
		// https://cloud.google.com/managed-kafka/docs/locations for a list of
		// supported locations.
		location!: string

		// The operation type. Allowed values are (case insensitive): ALL, READ,
		// WRITE, CREATE, DELETE, ALTER, DESCRIBE, CLUSTER_ACTION, DESCRIBE_CONFIGS,
		// ALTER_CONFIGS, and IDEMPOTENT_WRITE. See
		// https://kafka.apache.org/documentation/#operations_resources_and_protocols
		// for valid combinations of resource_type and operation for different
		// Kafka API requests.
		operation!: string

		// The permission type. Accepted values are (case insensitive): ALLOW, DENY.
		permission_type?: string

		// The principal. Specified as a Google Cloud account, with the Kafka
		// StandardAuthorizer prefix "User:". For example:
		// "User:test-kafka-client@test-project.iam.gserviceaccount.com". Can be
		// the wildcard "User:*" to refer to all users.
		principal!: string
		project?:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
