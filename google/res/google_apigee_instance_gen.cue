package res

import "list"

#google_apigee_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_instance")
	close({
		// Optional. Customer accept list represents the list of projects
		// (id/number) on customer
		// side that can privately connect to the service attachment. It
		// is an optional field
		// which the customers can provide during the instance creation.
		// By default, the customer
		// project associated with the Apigee organization will be
		// included to the list.
		consumer_accept_list?: [...string]

		// Description of the instance.
		description?: string

		// Customer Managed Encryption Key (CMEK) used for disk and volume
		// encryption. Required for Apigee paid subscriptions only.
		// Use the following format:
		// 'projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)'
		disk_encryption_key_name?: string

		// Display name of the instance.
		display_name?: string

		// Output only. Hostname or IP address of the exposed Apigee
		// endpoint used by clients to connect to the service.
		host?: string

		// IP range represents the customer-provided CIDR block of length
		// 22 that will be used for
		// the Apigee instance creation. This optional range, if provided,
		// should be freely
		// available as part of larger named range the customer has
		// allocated to the Service
		// Networking peering. If this is not provided, Apigee will
		// automatically request for any
		// available /22 CIDR block from Service Networking. The customer
		// should use this CIDR block
		// for configuring their firewall needs to allow traffic from
		// Apigee.
		// Input format: "a.b.c.d/22"
		ip_range?: string
		id?:       string

		// Required. Compute Engine location where the instance resides.
		location!: string

		// Resource ID of the instance.
		name!: string
		access_logging_config?: matchN(1, [#access_logging_config, list.MaxItems(1) & [...#access_logging_config]])

		// The Apigee Organization associated with the Apigee instance,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string

		// The size of the CIDR block range that will be reserved by the
		// instance. For valid values,
		// see
		// [CidrRange](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances#CidrRange)
		// on the documentation.
		peering_cidr_range?: string
		timeouts?:           #timeouts

		// Output only. Port number of the exposed Apigee endpoint.
		port?: string

		// Output only. Resource name of the service attachment created
		// for the instance in
		// the format: projects/*/regions/*/serviceAttachments/* Apigee
		// customers can privately
		// forward traffic to this service attachment using the PSC
		// endpoints.
		service_attachment?: string
	})

	#access_logging_config: close({
		// Boolean flag that specifies whether the customer access log
		// feature is enabled.
		enabled!: bool

		// Ship the access log entries that match the statusCode defined
		// in the filter.
		// The statusCode is the only expected/supported filter field.
		// (Ex: statusCode)
		// The filter will parse it to the Common Expression Language
		// semantics for expression
		// evaluation to build the filter condition. (Ex: "filter":
		// statusCode >= 200 && statusCode < 300 )
		filter?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
