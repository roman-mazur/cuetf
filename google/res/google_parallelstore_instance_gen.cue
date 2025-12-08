package res

#google_parallelstore_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_parallelstore_instance")
	close({
		// Output only. List of access_points.
		// Contains a list of IPv4 addresses used for client side
		// configuration.
		access_points?: [...string]

		// Required. Immutable. Storage capacity of Parallelstore instance
		// in Gibibytes (GiB).
		capacity_gib!: string

		// The time when the instance was created.
		create_time?: string

		// The version of DAOS software running in the instance.
		daos_version?: string

		// Parallelstore Instance deployment type.
		// Possible values:
		// DEPLOYMENT_TYPE_UNSPECIFIED
		// SCRATCH
		// PERSISTENT
		deployment_type?: string

		// The description of the instance. 2048 characters or less.
		description?: string

		// Stripe level for directories.
		// MIN when directory has a small number of files.
		// MAX when directory has a large number of files.
		// Possible values:
		// DIRECTORY_STRIPE_LEVEL_UNSPECIFIED
		// DIRECTORY_STRIPE_LEVEL_MIN
		// DIRECTORY_STRIPE_LEVEL_BALANCED
		// DIRECTORY_STRIPE_LEVEL_MAX
		directory_stripe_level?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Immutable. Contains the id of the allocated IP address
		// range associated with the private service access connection for
		// example, \"test-default\"
		// associated with IP range 10.0.0.0/29. This field is populated
		// by the service
		// and contains the value currently used by the service.
		effective_reserved_ip_range?: string

		// Stripe level for files.
		// MIN better suited for small size files.
		// MAX higher throughput performance for larger files.
		// Possible values:
		// FILE_STRIPE_LEVEL_UNSPECIFIED
		// FILE_STRIPE_LEVEL_MIN
		// FILE_STRIPE_LEVEL_BALANCED
		// FILE_STRIPE_LEVEL_MAX
		file_stripe_level?: string
		id?:                string

		// The logical name of the Parallelstore instance in the user
		// project with the following restrictions:
		// * Must contain only lowercase letters, numbers, and hyphens.
		// * Must start with a letter.
		// * Must be between 1-63 characters.
		// * Must end with a number or a letter.
		// * Must be unique within the customer project/ location
		instance_id!: string

		// Cloud Labels are a flexible and lightweight mechanism for
		// organizing cloud resources into groups that reflect a
		// customer's organizational
		// needs and deployment strategies. Cloud Labels can be used to
		// filter collections
		// of resources. They can be used to control how resource metrics
		// are aggregated.
		// And they can be used as arguments to policy management rules
		// (e.g. route, firewall,
		// load balancing, etc.).
		//
		// * Label keys must be between 1 and 63 characters long and must
		// conform to
		// the following regular expression: 'a-z{0,62}'.
		// * Label values must be between 0 and 63 characters long and
		// must conform
		// to the regular expression '[a-z0-9_-]{0,63}'.
		// * No more than 64 labels can be associated with a given
		// resource.
		//
		// See https://goo.gl/xmQnxf for more information on and examples
		// of labels.
		//
		// If you plan to use labels in your own code, please note that
		// additional
		// characters may be allowed in the future. Therefore, you are
		// advised to use
		// an internal label representation, such as JSON, which doesn't
		// rely upon
		// specific characters being disallowed. For example, representing
		// labels
		// as the string: 'name + "_" + value' would prove problematic if
		// we were to
		// allow '"_"' in a future release. "
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		timeouts?: #timeouts

		// Part of 'parent'. See documentation of 'projectsId'.
		location!: string

		// Identifier. The resource name of the instance, in the format
		// 'projects/{project}/locations/{location}/instances/{instance_id}'
		name?: string

		// Immutable. The name of the Google Compute Engine [VPC
		// network](https://cloud.google.com/vpc/docs/vpc)
		// to which the instance is connected.
		network?: string
		project?: string

		// Immutable. Contains the id of the allocated IP address range
		// associated with the private service access connection for
		// example, \"test-default\"
		// associated with IP range 10.0.0.0/29. If no range id is
		// provided all ranges will
		// be considered.
		reserved_ip_range?: string

		// The instance state.
		// Possible values:
		// STATE_UNSPECIFIED
		// CREATING
		// ACTIVE
		// DELETING
		// FAILED
		// UPGRADING
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The time when the instance was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
