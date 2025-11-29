package res

import "list"

#google_colab_runtime_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_colab_runtime_template")
	close({
		// The description of the Runtime Template.
		description?: string

		// Required. The display name of the Runtime Template.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Labels to identify and group the runtime template.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the resource:
		// https://cloud.google.com/colab/docs/locations
		location!: string

		// The resource name of the Runtime Template
		name?: string
		data_persistent_disk_spec?: matchN(1, [#data_persistent_disk_spec, list.MaxItems(1) & [...#data_persistent_disk_spec]])
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		euc_config?: matchN(1, [#euc_config, list.MaxItems(1) & [...#euc_config]])
		idle_shutdown_config?: matchN(1, [#idle_shutdown_config, list.MaxItems(1) & [...#idle_shutdown_config]])
		machine_spec?: matchN(1, [#machine_spec, list.MaxItems(1) & [...#machine_spec]])
		network_spec?: matchN(1, [#network_spec, list.MaxItems(1) & [...#network_spec]])
		shielded_vm_config?: matchN(1, [#shielded_vm_config, list.MaxItems(1) & [...#shielded_vm_config]])

		// Applies the given Compute Engine tags to the runtime.
		network_tags?: [...string]
		software_config?: matchN(1, [#software_config, list.MaxItems(1) & [...#software_config]])

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?:  string
		timeouts?: #timeouts
	})

	#data_persistent_disk_spec: close({
		// The disk size of the runtime in GB. If specified, the diskType
		// must also be specified. The minimum size is 10GB and the
		// maximum is 65536GB.
		disk_size_gb?: string

		// The type of the persistent disk.
		disk_type?: string
	})

	#encryption_spec: close({
		// The Cloud KMS encryption key (customer-managed encryption key)
		// used to protect the runtime.
		kms_key_name?: string
	})

	#euc_config: close({
		// Disable end user credential access for the runtime.
		euc_disabled?: bool
	})

	#idle_shutdown_config: close({
		// The duration after which the runtime is automatically shut
		// down. An input of 0s disables the idle shutdown feature, and a
		// valid range is [10m, 24h].
		idle_timeout?: string
	})

	#machine_spec: close({
		// The number of accelerators used by the runtime.
		accelerator_count?: number

		// The type of hardware accelerator used by the runtime. If
		// specified, acceleratorCount must also be specified.
		accelerator_type?: string

		// The Compute Engine machine type selected for the runtime.
		machine_type?: string
	})

	#network_spec: close({
		// Enable public internet access for the runtime.
		enable_internet_access?: bool

		// The name of the VPC that this runtime is in.
		network?: string

		// The name of the subnetwork that this runtime is in.
		subnetwork?: string
	})

	#shielded_vm_config: close({
		// Enables secure boot for the runtime.
		enable_secure_boot?: bool
	})

	#software_config: close({
		env?: matchN(1, [_#defs."/$defs/software_config/$defs/env", [..._#defs."/$defs/software_config/$defs/env"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/software_config/$defs/env": close({
		// Name of the environment variable. Must be a valid C identifier.
		name?: string

		// Variables that reference a $(VAR_NAME) are expanded using the
		// previous defined environment variables in the container and
		// any service environment variables. If a variable cannot be
		// resolved, the reference in the input string will be unchanged.
		// The $(VAR_NAME) syntax can be escaped with a double $$, ie:
		// $$(VAR_NAME). Escaped references will never be expanded,
		// regardless of whether the variable exists or not.
		value?: string
	})
}
