package res

import "list"

#google_vertex_ai_index_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_index_endpoint")
	close({
		// The timestamp of when the Index was created in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		create_time?: string

		// The description of the Index.
		description?: string

		// The display name of the Index. The name can be up to 128
		// characters long and can consist of any UTF-8 characters.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Used to perform consistent read-modify-write updates.
		etag?: string

		// The labels with user-defined metadata to organize your Indexes.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The resource name of the Index.
		name?: string

		// The full name of the Google Compute Engine
		// [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks)
		// to which the index endpoint should be peered.
		// Private services access must already be configured for the
		// network. If left unspecified, the index endpoint is not peered
		// with any network.
		// [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert):
		// 'projects/{project}/global/networks/{network}'.
		// Where '{project}' is a project number, as in '12345', and
		// '{network}' is network name.
		network?: string

		// If publicEndpointEnabled is true, this field will be populated
		// with the domain name to use for this index endpoint.
		public_endpoint_domain_name?: string
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		private_service_connect_config?: matchN(1, [#private_service_connect_config, list.MaxItems(1) & [...#private_service_connect_config]])
		timeouts?: #timeouts
		project?:  string

		// If true, the deployed index will be accessible through public
		// endpoint.
		public_endpoint_enabled?: bool

		// The region of the index endpoint. eg us-central1
		region?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the Index was last updated in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		update_time?: string
	})

	#encryption_spec: close({
		// Required. The Cloud KMS resource identifier of the customer
		// managed encryption key used to protect a resource. Has the
		// form:
		// 'projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key'.
		// The key needs to be in the same region as where the compute
		// resource is created.
		kms_key_name!: string
	})

	#private_service_connect_config: close({
		psc_automation_configs?: matchN(1, [_#defs."/$defs/private_service_connect_config/$defs/psc_automation_configs", [..._#defs."/$defs/private_service_connect_config/$defs/psc_automation_configs"]])

		// If set to true, the IndexEndpoint is created without private
		// service access.
		enable_private_service_connect!: bool

		// A list of Projects from which the forwarding rule will target
		// the service attachment.
		project_allowlist?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/private_service_connect_config/$defs/psc_automation_configs": close({
		// The full name of the Google Compute Engine
		// [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks).
		// [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/get):
		// projects/{project}/global/networks/{network}.
		network!: string

		// Project id used to create forwarding rule.
		project_id!: string
	})
}
