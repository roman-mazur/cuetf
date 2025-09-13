package res

import "list"

#google_cloudbuild_worker_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloudbuild_worker_pool")
	close({
		// User specified annotations. See
		// https://google.aip.dev/128#annotations for more details such
		// as format and size limitations.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field `effective_annotations` for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. Time at which the request to create the
		// `WorkerPool` was received.
		create_time?: string

		// Output only. Time at which the request to delete the
		// `WorkerPool` was received.
		delete_time?: string

		// A user-specified, human-readable name for the `WorkerPool`. If
		// provided, this value must be 1-63 characters.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// The location for the resource
		location!: string

		// User-defined name of the `WorkerPool`.
		name!: string
		id?:   string

		// The project for the resource
		project?: string
		network_config?: matchN(1, [#network_config, list.MaxItems(1) & [...#network_config]])
		private_service_connect?: matchN(1, [#private_service_connect, list.MaxItems(1) & [...#private_service_connect]])
		timeouts?: #timeouts
		worker_config?: matchN(1, [#worker_config, list.MaxItems(1) & [...#worker_config]])

		// Output only. `WorkerPool` state. Possible values:
		// STATE_UNSPECIFIED, PENDING, APPROVED, REJECTED, CANCELLED
		state?: string

		// Output only. A unique identifier for the `WorkerPool`.
		uid?: string

		// Output only. Time at which the request to update the
		// `WorkerPool` was received.
		update_time?: string
	})

	#network_config: close({
		// Required. Immutable. The network definition that the workers
		// are peered to. If this section is left empty, the workers will
		// be peered to `WorkerPool.project_id` on the service producer
		// network. Must be in the format
		// `projects/{project}/global/networks/{network}`, where
		// `{project}` is a project number, such as `12345`, and
		// `{network}` is the name of a VPC network in the project. See
		// [Understanding network configuration
		// options](https://cloud.google.com/cloud-build/docs/custom-workers/set-up-custom-worker-pool-environment#understanding_the_network_configuration_options)
		peered_network!: string

		// Optional. Immutable. Subnet IP range within the peered network.
		// This is specified in CIDR notation with a slash and the subnet
		// prefix size. You can optionally specify an IP address before
		// the subnet prefix value. e.g. `192.168.0.0/29` would specify
		// an IP range starting at 192.168.0.0 with a prefix size of 29
		// bits. `/16` would specify a prefix size of 16 bits, with an
		// automatically determined IP within the peered VPC. If
		// unspecified, a value of `/24` will be used.
		peered_network_ip_range?: string
	})

	#private_service_connect: close({
		// Required. Immutable. The network attachment that the worker
		// network interface is connected to. Must be in the format
		// `projects/{project}/regions/{region}/networkAttachments/{networkAttachment}`.
		// The region of network attachment must be the same as the
		// worker pool. See [Network
		// Attachments](https://cloud.google.com/vpc/docs/about-network-attachments)
		network_attachment!: string

		// Immutable. Route all traffic through PSC interface. Enable this
		// if you want full control of traffic in the private pool.
		// Configure Cloud NAT for the subnet of network attachment if
		// you need to access public Internet. If false, Only route
		// private IPs, e.g. 10.0.0.0/8, 172.16.0.0/12, and
		// 192.168.0.0/16 through PSC interface.
		route_all_traffic?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#worker_config: close({
		// Size of the disk attached to the worker, in GB. See [Worker
		// pool config
		// file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file).
		// Specify a value of up to 1000. If `0` is specified, Cloud
		// Build will use a standard disk size.
		disk_size_gb?: number

		// Enable nested virtualization on the worker, if supported by the
		// machine type. See [Worker pool config
		// file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema).
		// If left blank, Cloud Build will set this to false.
		enable_nested_virtualization?: bool

		// Machine type of a worker, such as `n1-standard-1`. See [Worker
		// pool config
		// file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file).
		// If left blank, Cloud Build will use `n1-standard-1`.
		machine_type?: string

		// If true, workers are created without any public address, which
		// prevents network egress to public IPs.
		no_external_ip?: bool
	})
}
