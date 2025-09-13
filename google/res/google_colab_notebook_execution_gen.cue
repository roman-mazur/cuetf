package res

import "list"

#google_colab_notebook_execution: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_colab_notebook_execution")
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
		dataform_repository_source?: matchN(1, [#dataform_repository_source, list.MaxItems(1) & [...#dataform_repository_source]])

		// User specified ID for the Notebook Execution Job
		notebook_execution_job_id?: string
		direct_notebook_source?: matchN(1, [#direct_notebook_source, list.MaxItems(1) & [...#direct_notebook_source]])
		gcs_notebook_source?: matchN(1, [#gcs_notebook_source, list.MaxItems(1) & [...#gcs_notebook_source]])
		timeouts?: #timeouts

		// The NotebookRuntimeTemplate to source compute configuration
		// from.
		notebook_runtime_template_resource_name?: string
		project?:                                 string

		// The service account to run the execution as.
		service_account?: string
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
}
