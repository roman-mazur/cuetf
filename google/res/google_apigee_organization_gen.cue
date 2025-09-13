package res

import "list"

#google_apigee_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_organization")
	close({
		// Primary GCP region for analytics data storage. For valid
		// values, see [Create an Apigee
		// organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
		analytics_region?: string

		// Cloud KMS key name used for encrypting API consumer data.
		api_consumer_data_encryption_key_name?: string

		// This field is needed only for customers using non-default data
		// residency regions.
		// Apigee stores some control plane data only in single region.
		// This field determines which single region Apigee should use.
		api_consumer_data_location?: string

		// Output only. Project ID of the Apigee Tenant Project.
		apigee_project_id?: string

		// Compute Engine network used for Service Networking to be peered
		// with Apigee runtime instances.
		// See [Getting started with the Service Networking
		// API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started).
		// Valid only when 'RuntimeType' is set to CLOUD. The value can be
		// updated only when there are no runtime instances. For example:
		// "default".
		authorized_network?: string

		// Billing type of the Apigee organization. See [Apigee
		// pricing](https://cloud.google.com/apigee/pricing).
		billing_type?: string

		// Output only. Base64-encoded public certificate for the root CA
		// of the Apigee organization.
		// Valid only when 'RuntimeType' is CLOUD. A base64-encoded
		// string.
		ca_certificate?: string

		// Cloud KMS key name used for encrypting control plane data that
		// is stored in a multi region.
		// Only used for the data residency region "US" or "EU".
		control_plane_encryption_key_name?: string

		// Description of the Apigee organization.
		description?: string

		// Flag that specifies whether the VPC Peering through Private
		// Google Access should be
		// disabled between the consumer network and Apigee. Required if
		// an 'authorizedNetwork'
		// on the consumer project is not provided, in which case the flag
		// should be set to 'true'.
		// Valid only when 'RuntimeType' is set to CLOUD. The value must
		// be set before the creation
		// of any Apigee runtime instance and can be updated only when
		// there are no runtime instances.
		disable_vpc_peering?: bool

		// The display name of the Apigee organization.
		display_name?: string
		properties?: matchN(1, [#properties, list.MaxItems(1) & [...#properties]])
		timeouts?: #timeouts
		id?:       string

		// Output only. Name of the Apigee organization.
		name?: string

		// The project ID associated with the Apigee organization.
		project_id!: string

		// Optional. This setting is applicable only for organizations
		// that are soft-deleted (i.e., BillingType
		// is not EVALUATION). It controls how long Organization data will
		// be retained after the initial delete
		// operation completes. During this period, the Organization may
		// be restored to its last known state.
		// After this period, the Organization will no longer be able to
		// be restored. Default value: "DELETION_RETENTION_UNSPECIFIED"
		// Possible values: ["DELETION_RETENTION_UNSPECIFIED", "MINIMUM"]
		retention?: string

		// Cloud KMS key name used for encrypting the data that is stored
		// and replicated across runtime instances.
		// Update is not allowed after the organization is created.
		// If not specified, a Google-Managed encryption key will be used.
		// Valid only when 'RuntimeType' is CLOUD. For example:
		// 'projects/foo/locations/us/keyRings/bar/cryptoKeys/baz'.
		runtime_database_encryption_key_name?: string

		// Runtime type of the Apigee organization based on the Apigee
		// subscription purchased. Default value: "CLOUD" Possible
		// values: ["CLOUD", "HYBRID"]
		runtime_type?: string

		// Output only. Subscription type of the Apigee organization.
		// Valid values include trial (free, limited, and for evaluation
		// purposes only) or paid (full subscription has been purchased).
		subscription_type?: string
	})

	#properties: close({
		property?: matchN(1, [_#defs."/$defs/properties/$defs/property", [..._#defs."/$defs/properties/$defs/property"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/properties/$defs/property": close({
		// Name of the property.
		name?: string

		// Value of the property.
		value?: string
	})
}
