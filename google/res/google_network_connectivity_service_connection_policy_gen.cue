package res

import "list"

#google_network_connectivity_service_connection_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_connectivity_service_connection_policy")
	close({
		// The timestamp when the resource was created.
		create_time?: string

		// Free-text description of the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The etag is computed by the server, and may be sent on update
		// and delete requests to ensure the client has an up-to-date
		// value before proceeding.
		etag?: string

		// The type of underlying resources used to create the connection.
		infrastructure?: string
		id?:             string

		// User-defined labels.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the ServiceConnectionPolicy.
		location!: string

		// The name of a ServiceConnectionPolicy. Format:
		// projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy}
		// See:
		// https://google.aip.dev/122#fields-representing-resource-names
		name!: string

		// The resource path of the consumer network. Example: -
		// projects/{projectNumOrId}/global/networks/{resourceId}.
		network!: string
		psc_config?: matchN(1, [#psc_config, list.MaxItems(1) & [...#psc_config]])
		timeouts?: #timeouts
		project?:  string

		// Information about each Private Service Connect connection.
		psc_connections?: [...close({
			consumer_address?:         string
			consumer_forwarding_rule?: string
			consumer_target_project?:  string
			error?: [...close({
				code?: number
				details?: [...{
					[string]: string
				}]
				message?: string
			})]
			error_info?: [...close({
				domain?: string
				metadata?: [string]: string
				reason?: string
			})]
			error_type?:        string
			gce_operation?:     string
			psc_connection_id?: string
			state?:             string
		})]

		// The service class identifier for which this
		// ServiceConnectionPolicy is for. The service class identifier
		// is a unique, symbolic representation of a ServiceClass.
		// It is provided by the Service Producer. Google services have a
		// prefix of gcp. For example, gcp-cloud-sql. 3rd party services
		// do not. For example, test-service-a3dfcx.
		service_class!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp when the resource was updated.
		update_time?: string
	})

	#psc_config: close({
		// List of Projects, Folders, or Organizations from where the
		// Producer instance can be within. For example,
		// a network administrator can provide both 'organizations/foo'
		// and 'projects/bar' as
		// allowed_google_producers_resource_hierarchy_levels. This
		// allowlists this network to connect with any Producer
		// instance within the 'foo' organization or the 'bar' project. By
		// default,
		// allowedGoogleProducersResourceHierarchyLevel is empty. The
		// format for each
		// allowedGoogleProducersResourceHierarchyLevel is / where is one
		// of 'projects', 'folders', or 'organizations'
		// and is either the ID or the number of the resource type. Format
		// for each
		// allowedGoogleProducersResourceHierarchyLevel value: 'projects/'
		// or 'folders/' or 'organizations/' Eg.
		// [projects/my-project-id, projects/567, folders/891,
		// organizations/123]
		allowed_google_producers_resource_hierarchy_level?: [...string]

		// Max number of PSC connections for this policy.
		limit?: string

		// ProducerInstanceLocation is used to specify which authorization
		// mechanism to use to determine which projects
		// the Producer instance can be within. Possible values:
		// ["PRODUCER_INSTANCE_LOCATION_UNSPECIFIED",
		// "CUSTOM_RESOURCE_HIERARCHY_LEVELS"]
		producer_instance_location?: string

		// IDs of the subnetworks or fully qualified identifiers for the
		// subnetworks
		subnetworks!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
