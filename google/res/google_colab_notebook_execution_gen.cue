package res

import "list"

#google_colab_notebook_execution: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_colab_notebook_execution")
	close({
		// Required. The display name of the Notebook Execution.
		display_name!: string

		// Max running time of the execution job in seconds (default
		// 86400s / 24 hrs).
		execution_timeout?: string

		// The user email to run the execution as.
		execution_user?: string

		// The Cloud Storage location to upload the result to.
		// Format:'gs://bucket-name'
		gcs_output_uri!: string
		id?:             string

		// The location for the resource:
		// https://cloud.google.com/colab/docs/locations
		location!: string

		// User specified ID for the Notebook Execution Job
		notebook_execution_job_id?: string

		// The NotebookRuntimeTemplate to source compute configuration
		// from.
		notebook_runtime_template_resource_name?: string
		custom_environment_spec?: matchN(1, [#custom_environment_spec, list.MaxItems(1) & [...#custom_environment_spec]])
		dataform_repository_source?: matchN(1, [#dataform_repository_source, list.MaxItems(1) & [...#dataform_repository_source]])
		direct_notebook_source?: matchN(1, [#direct_notebook_source, list.MaxItems(1) & [...#direct_notebook_source]])
		gcs_notebook_source?: matchN(1, [#gcs_notebook_source, list.MaxItems(1) & [...#gcs_notebook_source]])
		timeouts?: #timeouts
		project?:  string

		// The service account to run the execution as.
		service_account?: string
	})

	#custom_environment_spec: close({
		machine_spec?: matchN(1, [_#defs."/$defs/custom_environment_spec/$defs/machine_spec", list.MaxItems(1) & [..._#defs."/$defs/custom_environment_spec/$defs/machine_spec"]])
		network_spec?: matchN(1, [_#defs."/$defs/custom_environment_spec/$defs/network_spec", list.MaxItems(1) & [..._#defs."/$defs/custom_environment_spec/$defs/network_spec"]])
		persistent_disk_spec?: matchN(1, [_#defs."/$defs/custom_environment_spec/$defs/persistent_disk_spec", list.MaxItems(1) & [..._#defs."/$defs/custom_environment_spec/$defs/persistent_disk_spec"]])
	})

	#dataform_repository_source: close({
		// The commit SHA to read repository with. If unset, the file will
		// be read at HEAD.
		commit_sha?: string

		// The resource name of the Dataform Repository.
		dataform_repository_resource_name!: string
	})

	#direct_notebook_source: close({
		// The base64-encoded contents of the input notebook file.
		content!: string
	})

	#gcs_notebook_source: close({
		// The version of the Cloud Storage object to read. If unset, the
		// current version of the object is read. See
		// https://cloud.google.com/storage/docs/metadata#generation-number.
		generation?: string

		// The Cloud Storage uri pointing to the ipynb file.
		uri!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/custom_environment_spec/$defs/machine_spec": close({
		// The number of accelerators used by the runtime.
		accelerator_count?: number

		// The type of hardware accelerator used by the runtime. If
		// specified, acceleratorCount must also be specified.
		accelerator_type?: string

		// The Compute Engine machine type selected for the runtime.
		machine_type?: string
	})

	_#defs: "/$defs/custom_environment_spec/$defs/network_spec": close({
		// Enable public internet access for the runtime.
		enable_internet_access?: bool

		// The name of the VPC that this runtime is in.
		network?: string

		// The name of the subnetwork that this runtime is in.
		subnetwork?: string
	})

	_#defs: "/$defs/custom_environment_spec/$defs/persistent_disk_spec": close({
		// The disk size of the runtime in GB. If specified, the diskType
		// must also be specified. The minimum size is 10GB and the
		// maximum is 65536GB.
		disk_size_gb?: string

		// The type of the persistent disk.
		disk_type?: string
	})
}
