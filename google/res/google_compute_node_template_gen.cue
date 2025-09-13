package res

import "list"

#google_compute_node_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_node_template")
	close({
		// CPU overcommit. Default value: "NONE" Possible values:
		// ["ENABLED", "NONE"]
		cpu_overcommit_type?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional textual description of the resource.
		description?: string
		id?:          string

		// Name of the resource.
		name!: string

		// Labels to use for node affinity, which will be used in
		// instance scheduling.
		node_affinity_labels?: [string]: string

		// Node type to use for nodes group that are created from this
		// template.
		// Only one of nodeTypeFlexibility and nodeType can be specified.
		node_type?: string
		accelerators?: matchN(1, [#accelerators, [...#accelerators]])
		disks?: matchN(1, [#disks, [...#disks]])
		node_type_flexibility?: matchN(1, [#node_type_flexibility, list.MaxItems(1) & [...#node_type_flexibility]])
		server_binding?: matchN(1, [#server_binding, list.MaxItems(1) & [...#server_binding]])
		project?:  string
		timeouts?: #timeouts

		// Region where nodes using the node template will be created.
		// If it is not provided, the provider region is used.
		region?:    string
		self_link?: string
	})

	#accelerators: close({
		// The number of the guest accelerator cards exposed to this
		// node template.
		accelerator_count?: number

		// Full or partial URL of the accelerator type resource to expose
		// to this node template.
		accelerator_type?: string
	})

	#disks: close({
		// Specifies the number of such disks.
		disk_count?: number

		// Specifies the size of the disk in base-2 GB.
		disk_size_gb?: number

		// Specifies the desired disk type on the node. This disk type
		// must be a local storage type (e.g.: local-ssd). Note that for
		// nodeTemplates, this should be the name of the disk type and
		// not its URL.
		disk_type?: string
	})

	#node_type_flexibility: close({
		// Number of virtual CPUs to use.
		cpus?: string

		// Use local SSD
		local_ssd?: string

		// Physical memory available to the node, defined in MB.
		memory?: string
	})

	#server_binding: close({
		// Type of server binding policy. If 'RESTART_NODE_ON_ANY_SERVER',
		// nodes using this template will restart on any physical server
		// following a maintenance event.
		//
		// If 'RESTART_NODE_ON_MINIMAL_SERVER', nodes using this template
		// will restart on the same physical server following a
		// maintenance
		// event, instead of being live migrated to or restarted on a new
		// physical server. This option may be useful if you are using
		// software licenses tied to the underlying server characteristics
		// such as physical sockets or cores, to avoid the need for
		// additional licenses when maintenance occurs. However, VMs on
		// such
		// nodes will experience outages while maintenance is applied.
		// Possible values: ["RESTART_NODE_ON_ANY_SERVER",
		// "RESTART_NODE_ON_MINIMAL_SERVERS"]
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
