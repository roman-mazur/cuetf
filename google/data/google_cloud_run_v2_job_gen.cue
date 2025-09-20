package data

#google_cloud_run_v2_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloud_run_v2_job")
	close({
		// Unstructured key value map that may be set by external tools to
		// store and arbitrary metadata. They are not queryable and
		// should be preserved when modifying objects.
		//
		// Cloud Run API v2 does not support annotations with
		// 'run.googleapis.com', 'cloud.googleapis.com',
		// 'serving.knative.dev', or 'autoscaling.knative.dev'
		// namespaces, and they will be rejected on new resources.
		// All system annotations in v1 now have a corresponding field in
		// v2 Job.
		//
		// This field follows Kubernetes annotations' namespacing, limits,
		// and rules.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Settings for the Binary Authorization feature.
		binary_authorization?: [...close({
			breakglass_justification?: string
			policy?:                   string
			use_default?:              bool
		})]

		// Arbitrary identifier for the API client.
		client?: string

		// Arbitrary version identifier for the API client.
		client_version?: string

		// The Conditions of all other associated sub-resources. They
		// contain additional diagnostics information in case the Job
		// does not reach its desired state. See comments in reconciling
		// for additional information on 'reconciliation' process in
		// Cloud Run.
		conditions?: [...close({
			execution_reason?:     string
			last_transition_time?: string
			message?:              string
			reason?:               string
			revision_reason?:      string
			severity?:             string
			state?:                string
			type?:                 string
		})]

		// The creation time.
		create_time?: string

		// Email address of the authenticated creator.
		creator?: string

		// The deletion time.
		delete_time?: string

		// Whether Terraform will be prevented from destroying the job.
		// Defaults to true.
		// When a'terraform destroy' or 'terraform apply' would delete the
		// job,
		// the command will fail if this field is not set to false in
		// Terraform state.
		// When the field is set to true or unset in Terraform state, a
		// 'terraform apply'
		// or 'terraform destroy' that would delete the job will fail.
		// When the field is set to false, deleting the job is allowed.
		deletion_protection?: bool

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// A system-generated fingerprint for this version of the
		// resource. May be used to detect modification conflict during
		// updates.
		etag?: string

		// Number of executions created for this job.
		execution_count?: number

		// For a deleted resource, the time after which it will be
		// permanently deleted.
		expire_time?: string

		// A number that monotonically increases every time the user
		// modifies the desired state.
		generation?: string
		id?:         string

		// Unstructured key value map that can be used to organize and
		// categorize objects. User-provided labels are shared with
		// Google's billing system, so they can be used to filter, or
		// break down billing charges by team, component,
		// environment, state, etc. For more information, visit
		// https://cloud.google.com/resource-manager/docs/creating-managing-labels
		// or https://cloud.google.com/run/docs/configuring/labels.
		//
		// Cloud Run API v2 does not support labels with
		// 'run.googleapis.com', 'cloud.googleapis.com',
		// 'serving.knative.dev', or 'autoscaling.knative.dev'
		// namespaces, and they will be rejected.
		// All system labels in v1 now have a corresponding field in v2
		// Job.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Email address of the last authenticated modifier.
		last_modifier?: string

		// Name of the last created execution.
		latest_created_execution?: [...close({
			completion_time?: string
			create_time?:     string
			name?:            string
		})]

		// The launch stage as defined by [Google Cloud Platform Launch
		// Stages](https://cloud.google.com/products#product-launch-stages).
		// Cloud Run supports ALPHA, BETA, and GA.
		// If no value is specified, GA is assumed. Set the launch stage
		// to a preview stage on input to allow use of preview features
		// in that stage. On read (or output), describes whether the
		// resource uses preview features.
		//
		// For example, if ALPHA is provided as input, but only BETA and
		// GA-level features are used, this field will be BETA on output.
		// Possible values: ["UNIMPLEMENTED", "PRELAUNCH",
		// "EARLY_ACCESS", "ALPHA", "BETA", "GA", "DEPRECATED"]
		launch_stage?: string

		// The location of the cloud run job
		location?: string

		// Name of the Job.
		name!: string

		// The generation of this Job. See comments in reconciling for
		// additional information on reconciliation process in Cloud Run.
		observed_generation?: string
		project?:             string

		// Returns true if the Job is currently being acted upon by the
		// system to bring it into the desired state.
		//
		// When a new Job is created, or an existing one is updated, Cloud
		// Run will asynchronously perform all necessary steps to bring
		// the Job to the desired state. This process is called
		// reconciliation. While reconciliation is in process,
		// observedGeneration and latest_succeeded_execution, will have
		// transient values that might mismatch the intended state: Once
		// reconciliation is over (and this field is false), there are
		// two possible outcomes: reconciliation succeeded and the state
		// matches the Job, or there was an error, and reconciliation
		// failed. This state can be found in terminalCondition.state.
		//
		// If reconciliation succeeded, the following fields will match:
		// observedGeneration and generation, latest_succeeded_execution
		// and latestCreatedExecution.
		//
		// If reconciliation failed, observedGeneration and
		// latest_succeeded_execution will have the state of the last
		// succeeded execution or empty for newly created Job. Additional
		// information on the failure can be found in terminalCondition
		// and conditions
		reconciling?: bool

		// The template used to create executions for this Job.
		template?: [...close({
			annotations?: [string]: string
			labels?: [string]:      string
			parallelism?: number
			task_count?:  number
			template?: [...close({
				containers?: [...close({
					args?: [...string]
					command?: [...string]
					depends_on?: [...string]
					env?: [...close({
						name?:  string
						value?: string
						value_source?: [...close({
							secret_key_ref?: [...close({
								secret?:  string
								version?: string
							})]
						})]
					})]
					image?: string
					name?:  string
					ports?: [...close({
						container_port?: number
						name?:           string
					})]
					resources?: [...close({
						limits?: [string]: string
					})]
					startup_probe?: [...close({
						failure_threshold?: number
						grpc?: [...close({
							port?:    number
							service?: string
						})]
						http_get?: [...close({
							http_headers?: [...close({
								name?:  string
								value?: string
							})]
							path?: string
							port?: number
						})]
						initial_delay_seconds?: number
						period_seconds?:        number
						tcp_socket?: [...close({
							port?: number
						})]
						timeout_seconds?: number
					})]
					volume_mounts?: [...close({
						mount_path?: string
						name?:       string
						sub_path?:   string
					})]
					working_dir?: string
				})]
				encryption_key?:                string
				execution_environment?:         string
				gpu_zonal_redundancy_disabled?: bool
				max_retries?:                   number
				node_selector?: [...close({
					accelerator?: string
				})]
				service_account?: string
				timeout?:         string
				volumes?: [...close({
					cloud_sql_instance?: [...close({
						instances?: [...string]
					})]
					empty_dir?: [...close({
						medium?:     string
						size_limit?: string
					})]
					gcs?: [...close({
						bucket?:    string
						read_only?: bool
					})]
					name?: string
					nfs?: [...close({
						path?:      string
						read_only?: bool
						server?:    string
					})]
					secret?: [...close({
						default_mode?: number
						items?: [...close({
							mode?:    number
							path?:    string
							version?: string
						})]
						secret?: string
					})]
				})]
				vpc_access?: [...close({
					connector?: string
					egress?:    string
					network_interfaces?: [...close({
						network?:    string
						subnetwork?: string
						tags?: [...string]
					})]
				})]
			})]
		})]

		// The Condition of this Job, containing its readiness status, and
		// detailed error information in case it did not reach the
		// desired state
		terminal_condition?: [...close({
			execution_reason?:     string
			last_transition_time?: string
			message?:              string
			reason?:               string
			revision_reason?:      string
			severity?:             string
			state?:                string
			type?:                 string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Server assigned unique identifier for the Execution. The value
		// is a UUID4 string and guaranteed to remain unchanged until the
		// resource is deleted.
		uid?: string

		// The last-modified time.
		update_time?: string
	})
}
