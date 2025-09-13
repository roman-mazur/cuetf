package res

import "list"

#google_secure_source_manager_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_secure_source_manager_instance")
	close({
		// Time the Instance was created in UTC.
		create_time?: string

		// The deletion policy for the instance. Setting 'ABANDON' allows
		// the resource
		// to be abandoned, rather than deleted. Setting 'DELETE' deletes
		// the resource
		// and all its contents. Setting 'PREVENT' prevents the resource
		// from accidental
		// deletion by erroring out during plan.
		// Default is 'PREVENT'. Possible values are:
		// * DELETE
		// * PREVENT
		// * ABANDON
		deletion_policy?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// A list of hostnames for this instance.
		host_config?: [...close({
			api?:      string
			git_http?: string
			git_ssh?:  string
			html?:     string
		})]

		// The name for the Instance.
		instance_id!: string
		id?:          string

		// Customer-managed encryption key name, in the format
		// projects/*/locations/*/keyRings/*/cryptoKeys/*.
		kms_key?: string

		// Labels as key value pairs.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the Instance.
		location!: string

		// The resource name for the Instance.
		name?: string
		private_config?: matchN(1, [#private_config, list.MaxItems(1) & [...#private_config]])
		timeouts?: #timeouts
		workforce_identity_federation_config?: matchN(1, [#workforce_identity_federation_config, list.MaxItems(1) & [...#workforce_identity_federation_config]])

		// The current state of the Instance.
		state?:   string
		project?: string

		// Provides information about the current instance state.
		state_note?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time the Instance was updated in UTC.
		update_time?: string
	})

	#private_config: close({
		// CA pool resource, resource must in the format of
		// 'projects/{project}/locations/{location}/caPools/{ca_pool}'.
		ca_pool?: string

		// Service Attachment for HTTP, resource is in the format of
		// 'projects/{project}/regions/{region}/serviceAttachments/{service_attachment}'.
		http_service_attachment?: string

		// 'Indicate if it's private instance.'
		is_private!: bool

		// Service Attachment for SSH, resource is in the format of
		// 'projects/{project}/regions/{region}/serviceAttachments/{service_attachment}'.
		ssh_service_attachment?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#workforce_identity_federation_config: close({
		// 'Whether Workforce Identity Federation is enabled.'
		enabled!: bool
	})
}
