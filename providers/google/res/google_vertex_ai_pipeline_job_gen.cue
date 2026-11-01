package res

import "list"

google_vertex_ai_pipeline_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_pipeline_job")
	close({
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		psc_interface_config?: matchN(1, [#psc_interface_config, list.MaxItems(1) & [...#psc_interface_config]])
		runtime_config?: matchN(1, [#runtime_config, list.MaxItems(1) & [...#runtime_config]])
		timeouts?: #timeouts

		// Pipeline creation time in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		create_time?: string

		// This field uses a custom implementation please refer to documentation under
		// /hashicorp/terraform-provider-google-beta/website/docs/r/vertex_ai_pipeline_job.html.markdown
		// for specifics
		deletion_policy?: string

		// The display name of the Pipeline. The name can be up to 128 characters long
		// and can consist of any UTF-8 characters.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// Pipeline end time in RFC3339 UTC "Zulu" format, with nanosecond resolution
		// and up to nine fractional digits.
		end_time?: string

		// The error that occurred during pipeline execution. Only populated when the
		// pipeline's state is FAILED or CANCELLED.
		error?: [...close({
			code?: number
			details?: [...{
				[string]: string
			}]
			message?: string
		})]
		id?: string

		// The details of pipeline run. Not available in the list view.
		job_detail?: [...close({
			pipeline_context?: [...close({
				create_time?:  string
				description?:  string
				display_name?: string
				etag?:         string
				labels?: [string]: string
				metadata?: string
				name?:     string
				parent_contexts?: [...string]
				schema_title?:   string
				schema_version?: string
				update_time?:    string
			})]
			pipeline_run_context?: [...close({
				create_time?:  string
				description?:  string
				display_name?: string
				etag?:         string
				labels?: [string]: string
				metadata?: string
				name?:     string
				parent_contexts?: [...string]
				schema_title?:   string
				schema_version?: string
				update_time?:    string
			})]
			task_details?: [...close({
				create_time?: string
				end_time?:    string
				error?: [...close({
					code?:    number
					message?: string
				})]
				parent_task_id?:   string
				start_time?:       string
				state?:            string
				task_id?:          string
				task_name?:        string
				task_unique_name?: string
			})]
		})]

		// The labels with user-defined metadata to organize PipelineJob.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The resource name of the PipelineJob. This is the final component of the resource path.
		name?: string

		// The full name of the Compute Engine network to which the Pipeline Job's
		// workload should be peered. For example,
		// 'projects/12345/global/networks/myVPC'. Format is of the form
		// 'projects/{project}/global/networks/{network}'. Where '{project}' is a
		// project number, as in '12345', and '{network}' is a network name. Private
		// services access must already be configured for the network. Pipeline job
		// will apply the network configuration to the Google Cloud resources being
		// launched, if applied, such as Vertex AI Training or Dataflow job. If left
		// unspecified, the workload is not peered with any network.
		network?: string

		// The ID to use for the PipelineJob, which will become the final component of
		// the PipelineJob name. If not provided, an ID will be automatically
		// generated.
		// This value should be less than 128 characters, and valid characters are '/[a-z][0-9]-/'.
		pipeline_job_id?: string

		// The spec of the pipeline. This is a JSON object that describes the pipeline.
		pipeline_spec?: string

		// Whether to do component level validations before job creation.
		preflight_validations?: bool

		// The region of the pipeline job. eg us-central1
		region?:  string
		project?: string

		// A list of names for the reserved ip ranges under the VPC network that can be
		// used for this Pipeline Job's workload. If set, we will deploy the Pipeline
		// Job's workload within the provided ip ranges. Otherwise, the job will be
		// deployed to any ip ranges under the provided VPC network.
		reserved_ip_ranges?: [...string]

		// The schedule resource name. Only returned if the Pipeline is created by Schedule API.
		schedule_name?: string

		// The service account that the pipeline workload runs as. If not specified, the
		// Compute Engine default service account in the project will be used. Users
		// starting the pipeline must have the iam.serviceAccounts.actAs permission on
		// this service account.
		service_account?: string

		// Pipeline start time in RFC3339 UTC "Zulu" format, with nanosecond resolution
		// and up to nine fractional digits.
		start_time?: string

		// The detailed state of the job.
		state?: string

		// Pipeline template metadata. Will fill up fields if PipelineJob.template_uri
		// is from supported template registry.
		template_metadata?: [...close({
			version?: string
		})]

		// A template uri from where the PipelineJob.pipeline_spec, if empty, will be
		// downloaded. Currently, only uri from Vertex Template Registry & Gallery is
		// supported.
		template_uri?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Timestamp when this PipelineJob was most recently updated in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine fractional digits.
		update_time?: string
	})

	#encryption_spec: close({
		// The Cloud KMS resource identifier of the customer managed encryption key used
		// to protect a resource. Has the form:
		// 'projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key'.
		// The key needs to be in the same region as where the compute resource is
		// created.
		kms_key_name!: string
	})

	#psc_interface_config: close({
		dns_peering_configs?: matchN(1, [_#defs."/$defs/psc_interface_config/$defs/dns_peering_configs", [..._#defs."/$defs/psc_interface_config/$defs/dns_peering_configs"]])

		// The name of the Compute Engine network attachment to attach to the resource
		// within the region and user project. To specify this field, you must have
		// already created a network attachment. This field is only used for resources
		// using PSC-I.
		network_attachment?: string
	})

	#runtime_config: close({
		input_artifacts?: matchN(1, [_#defs."/$defs/runtime_config/$defs/input_artifacts", [..._#defs."/$defs/runtime_config/$defs/input_artifacts"]])

		// Represents the failure policy of a pipeline. Currently, the default of a
		// pipeline is that the pipeline will continue to run until no more tasks can
		// be executed, also known as 'PIPELINE_FAILURE_POLICY_FAIL_SLOW'. However, if
		// a pipeline is set to 'PIPELINE_FAILURE_POLICY_FAIL_FAST', it will stop
		// scheduling any new tasks as soon as the pipeline fails.
		// Possible values are: 'PIPELINE_FAILURE_POLICY_UNSPECIFIED',
		// 'PIPELINE_FAILURE_POLICY_FAIL_SLOW', 'PIPELINE_FAILURE_POLICY_FAIL_FAST'.
		failure_policy?: string

		// A path in a Cloud Storage bucket, which will be treated as the root output
		// directory of the pipeline. It is used by the system to generate the paths of
		// output artifacts. The artifact paths are generated with a sub-directory
		// pattern '{job_id}/{task_id}/{output_key}' under the specified output
		// directory. The service account specified in this pipeline must have the
		// 'storage.objects.get' and 'storage.objects.create' permissions for this
		// bucket.
		gcs_output_directory!: string

		// The runtime parameters of the PipelineJob. The parameters will be passed into
		// PipelineJob.pipeline_spec to replace the placeholders at runtime. This field
		// is used by pipelines built using 'PipelineJob.pipeline_spec.schema_version'
		// 2.1.0, such as pipelines built using Kubeflow Pipelines SDK 1.9 or higher
		// and the v2 DSL.
		parameter_values?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/psc_interface_config/$defs/dns_peering_configs": close({
		// The DNS name suffix of the zone being peered to, e.g.,
		// "my-internal-domain.corp.". Must end with a dot.
		domain!: string

		// The VPC network name in the targetProject where the DNS zone specified by domain is visible.
		target_network!: string

		// The project ID hosting the Cloud DNS managed zone that contains the above
		// domain. The Vertex AI Service Agent must be granted the dns.peer role on
		// this project.
		target_project!: string
	})

	_#defs: "/$defs/runtime_config/$defs/input_artifacts": close({
		// Artifact resource id from MLMD. Which is the last portion of an artifact
		// resource name:
		// 'projects/{project}/locations/{location}/metadataStores/default/artifacts/{artifact_id}'.
		// The artifact must be within the same project, location and default
		// metadatastore as the pipeline.
		artifact_id!:  string
		artifact_key!: string
	})
}
