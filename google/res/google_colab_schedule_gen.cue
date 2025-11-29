package res

import "list"

#google_colab_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_colab_schedule")
	close({
		// Whether new scheduled runs can be queued when
		// max_concurrent_runs limit is reached. If set to true, new runs
		// will be queued instead of skipped. Default to false.
		allow_queueing?: bool

		// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch
		// scheduled runs.
		cron!: string

		// Desired state of the Colab Schedule. Set this field to 'ACTIVE'
		// to start/resume the schedule, and 'PAUSED' to pause the
		// schedule.
		desired_state?: string

		// Required. The display name of the Schedule.
		display_name!: string

		// Timestamp after which no new runs can be scheduled. If
		// specified, the schedule will be completed when either end_time
		// is reached or when scheduled_run_count >= max_run_count. Must
		// be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt)
		// format.
		end_time?: string
		id?:       string

		// The location for the resource:
		// https://cloud.google.com/colab/docs/locations
		location!: string

		// Maximum number of runs that can be started concurrently for
		// this Schedule. This is the limit for starting the scheduled
		// requests and not the execution of the notebook execution jobs
		// created by the requests.
		max_concurrent_run_count!: string

		// Maximum run count of the schedule. If specified, The schedule
		// will be completed when either startedRunCount >= maxRunCount
		// or when endTime is reached. If not specified, new runs will
		// keep getting scheduled until this Schedule is paused or
		// deleted. Already scheduled runs will be allowed to complete.
		// Unset if not specified.
		max_run_count?: string

		// The resource name of the Schedule
		name?: string
		create_notebook_execution_job_request!: matchN(1, [#create_notebook_execution_job_request, list.MaxItems(1) & [_, ...] & [...#create_notebook_execution_job_request]])
		timeouts?: #timeouts
		project?:  string

		// The timestamp after which the first run can be scheduled.
		// Defaults to the schedule creation time. Must be in the RFC
		// 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
		start_time?: string

		// Output only. The state of the schedule.
		state?: string
	})

	#create_notebook_execution_job_request: close({
		notebook_execution_job!: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job": close({
		// Required. The display name of the Notebook Execution.
		display_name!: string

		// Max running time of the execution job in seconds (default
		// 86400s / 24 hrs). A duration in seconds with up to nine
		// fractional digits, ending with "s". Example: "3.5s".
		execution_timeout?: string

		// The user email to run the execution as.
		execution_user?: string
		dataform_repository_source?: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/dataform_repository_source", list.MaxItems(1) & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/dataform_repository_source"]])

		// The Cloud Storage location to upload the result to.
		// Format:'gs://bucket-name'
		gcs_output_uri!: string
		gcs_notebook_source?: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/gcs_notebook_source", list.MaxItems(1) & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/gcs_notebook_source"]])

		// The NotebookRuntimeTemplate to source compute configuration
		// from.
		notebook_runtime_template_resource_name!: string

		// The service account to run the execution as.
		service_account?: string
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/dataform_repository_source": close({
		// The commit SHA to read repository with. If unset, the file will
		// be read at HEAD.
		commit_sha?: string

		// The resource name of the Dataform Repository.
		dataform_repository_resource_name!: string
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/gcs_notebook_source": close({
		// The version of the Cloud Storage object to read. If unset, the
		// current version of the object is read. See
		// https://cloud.google.com/storage/docs/metadata#generation-number.
		generation?: string

		// The Cloud Storage uri pointing to the ipynb file. Format:
		// gs://bucket/notebook_file.ipynb
		uri!: string
	})
}
