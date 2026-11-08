package res

import "list"

google_vertex_ai_training_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_training_pipeline")
	close({
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		input_data_config?: matchN(1, [#input_data_config, list.MaxItems(1) & [...#input_data_config]])
		model_to_upload?: matchN(1, [#model_to_upload, list.MaxItems(1) & [...#model_to_upload]])
		timeouts?: #timeouts

		// Time when the TrainingPipeline was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The user-defined name of this TrainingPipeline.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// Time when the TrainingPipeline entered any of the following states:
		// PIPELINE_STATE_SUCCEEDED, PIPELINE_STATE_FAILED, PIPELINE_STATE_CANCELLED.
		end_time?: string

		// Only populated when the pipeline's state is PIPELINE_STATE_FAILED or PIPELINE_STATE_CANCELLED.
		error?: [...close({
			code?:    number
			message?: string
		})]
		id?: string

		// The labels with user-defined metadata to organize TrainingPipelines.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The ID to use for the uploaded Model, which will become the final component
		// of the model resource name.
		model_id!: string

		// The resource name of the TrainingPipeline.
		name?: string

		// When specified, the model_to_upload will become a new version of this parent_model.
		parent_model?: string

		// The region of the training pipeline. eg us-central1
		region?:  string
		project?: string

		// Time when the TrainingPipeline for the first time entered the PIPELINE_STATE_RUNNING state.
		start_time?: string

		// The detailed state of the pipeline.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// A Google Cloud Storage path to the YAML file that defines the training task
		// which is responsible for producing the model artifact, and may also include
		// additional auxiliary work. The definition files that can be used here are
		// found in gs://google-cloud-aiplatform/schema/trainingjob/definition/.
		training_task_definition!: string

		// The training task's parameter(s), as specified in the
		// training_task_definition's inputs. This field uses JSON data as a string.
		training_task_inputs!: string

		// The metadata information as specified in the training_task_definition's metadata.
		training_task_metadata?: string

		// Time when the TrainingPipeline was most recently updated.
		update_time?: string
	})

	#encryption_spec: close({
		// The Cloud KMS resource identifier of the customer-managed encryption key used
		// to protect the training pipeline.
		kms_key_name!: string
	})

	#input_data_config: close({
		bigquery_destination?: matchN(1, [_#defs."/$defs/input_data_config/$defs/bigquery_destination", list.MaxItems(1) & [..._#defs."/$defs/input_data_config/$defs/bigquery_destination"]])
		filter_split?: matchN(1, [_#defs."/$defs/input_data_config/$defs/filter_split", list.MaxItems(1) & [..._#defs."/$defs/input_data_config/$defs/filter_split"]])
		fraction_split?: matchN(1, [_#defs."/$defs/input_data_config/$defs/fraction_split", list.MaxItems(1) & [..._#defs."/$defs/input_data_config/$defs/fraction_split"]])
		gcs_destination?: matchN(1, [_#defs."/$defs/input_data_config/$defs/gcs_destination", list.MaxItems(1) & [..._#defs."/$defs/input_data_config/$defs/gcs_destination"]])
		predefined_split?: matchN(1, [_#defs."/$defs/input_data_config/$defs/predefined_split", list.MaxItems(1) & [..._#defs."/$defs/input_data_config/$defs/predefined_split"]])
		stratified_split?: matchN(1, [_#defs."/$defs/input_data_config/$defs/stratified_split", list.MaxItems(1) & [..._#defs."/$defs/input_data_config/$defs/stratified_split"]])
		timestamp_split?: matchN(1, [_#defs."/$defs/input_data_config/$defs/timestamp_split", list.MaxItems(1) & [..._#defs."/$defs/input_data_config/$defs/timestamp_split"]])

		// Applicable only to custom training with Datasets that have DataItems and
		// Annotations. Cloud Storage URI that points to a YAML file describing the
		// annotation schema.
		annotation_schema_uri?: string

		// Applicable only to Datasets that have DataItems and Annotations. A filter on
		// Annotations of the Dataset.
		annotations_filter?: string

		// The ID of the Dataset in the same Project and Location which data will be
		// used to train the Model.
		dataset_id!: string

		// Whether to persist the ML use assignment to data item system labels.
		persist_ml_use_assignment?: bool

		// Only applicable to Datasets that have SavedQueries. The ID of a SavedQuery
		// under the Dataset specified by dataset_id used for filtering Annotations for
		// training.
		saved_query_id?: string
	})

	#model_to_upload: close({
		container_spec?: matchN(1, [_#defs."/$defs/model_to_upload/$defs/container_spec", list.MaxItems(1) & [..._#defs."/$defs/model_to_upload/$defs/container_spec"]])
		encryption_spec?: matchN(1, [_#defs."/$defs/model_to_upload/$defs/encryption_spec", list.MaxItems(1) & [..._#defs."/$defs/model_to_upload/$defs/encryption_spec"]])
		explanation_spec?: matchN(1, [_#defs."/$defs/model_to_upload/$defs/explanation_spec", list.MaxItems(1) & [..._#defs."/$defs/model_to_upload/$defs/explanation_spec"]])

		// The path to the directory containing the Model artifact and any of its supporting files.
		artifact_uri?: string

		// The description of the Model.
		description?: string

		// The user-defined name of the Model.
		display_name!: string

		// The labels with user-defined metadata to organize your Models.
		labels?: [string]: string

		// The resource name of the Model.
		name?: string

		// User provided version aliases so that a model version can be referenced using alias.
		version_aliases?: [...string]

		// The description of this version.
		version_description?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/input_data_config/$defs/bigquery_destination": close({
		// The BigQuery table to which the output is to be written.
		output_uri!: string
	})

	_#defs: "/$defs/input_data_config/$defs/filter_split": close({
		// A filter on DataItems of the Dataset for test set.
		test_filter!: string

		// A filter on DataItems of the Dataset for training set.
		training_filter!: string

		// A filter on DataItems of the Dataset for validation set.
		validation_filter!: string
	})

	_#defs: "/$defs/input_data_config/$defs/fraction_split": close({
		// The fraction of the input data that is to be used to evaluate the Model.
		test_fraction?: number

		// The fraction of the input data that is to be used to train the Model.
		training_fraction?: number

		// The fraction of the input data that is to be used to validate the Model.
		validation_fraction?: number
	})

	_#defs: "/$defs/input_data_config/$defs/gcs_destination": close({
		// The Cloud Storage URI prefix to write to.
		output_uri_prefix!: string
	})

	_#defs: "/$defs/input_data_config/$defs/predefined_split": close({
		// The key is a name of one of the Dataset's data columns.
		key!: string
	})

	_#defs: "/$defs/input_data_config/$defs/stratified_split": close({
		// The key is a name of one of the Dataset's data columns.
		key!: string

		// The fraction of the input data that is to be used to evaluate the Model.
		test_fraction?: number

		// The fraction of the input data that is to be used to train the Model.
		training_fraction?: number

		// The fraction of the input data that is to be used to validate the Model.
		validation_fraction?: number
	})

	_#defs: "/$defs/input_data_config/$defs/timestamp_split": close({
		// The key is a name of one of the Dataset's data columns.
		key!: string

		// The fraction of the input data that is to be used to evaluate the Model.
		test_fraction?: number

		// The fraction of the input data that is to be used to train the Model.
		training_fraction?: number

		// The fraction of the input data that is to be used to validate the Model.
		validation_fraction?: number
	})

	_#defs: "/$defs/model_to_upload/$defs/container_spec": close({
		env?: matchN(1, [_#defs."/$defs/model_to_upload/$defs/container_spec/$defs/env", [..._#defs."/$defs/model_to_upload/$defs/container_spec/$defs/env"]])
		grpc_ports?: matchN(1, [_#defs."/$defs/model_to_upload/$defs/container_spec/$defs/grpc_ports", [..._#defs."/$defs/model_to_upload/$defs/container_spec/$defs/grpc_ports"]])
		health_probe?: matchN(1, [_#defs."/$defs/model_to_upload/$defs/container_spec/$defs/health_probe", list.MaxItems(1) & [..._#defs."/$defs/model_to_upload/$defs/container_spec/$defs/health_probe"]])
		ports?: matchN(1, [_#defs."/$defs/model_to_upload/$defs/container_spec/$defs/ports", [..._#defs."/$defs/model_to_upload/$defs/container_spec/$defs/ports"]])
		startup_probe?: matchN(1, [_#defs."/$defs/model_to_upload/$defs/container_spec/$defs/startup_probe", list.MaxItems(1) & [..._#defs."/$defs/model_to_upload/$defs/container_spec/$defs/startup_probe"]])

		// Specifies the arguments to the command when the container starts.
		args?: [...string]

		// Specifies the command that runs when the container starts.
		command?: [...string]

		// Deployment timeout. Limit for deployment timeout is 2 hours.
		deployment_timeout?: string

		// HTTP path on the container to send health checks to.
		health_route?: string

		// URI of the Docker image to be used as the custom container for serving predictions.
		image_uri!: string

		// HTTP path on the container to send prediction requests to.
		predict_route?: string

		// The amount of the VM memory to reserve as the shared memory for the model in megabytes.
		shared_memory_size_mb?: string
	})

	_#defs: "/$defs/model_to_upload/$defs/container_spec/$defs/env": close({
		// The name of the environment variable.
		name!: string

		// The value of the environment variable.
		value!: string
	})

	_#defs: "/$defs/model_to_upload/$defs/container_spec/$defs/grpc_ports": close({
		// The number of the port on the container.
		container_port!: number
	})

	_#defs: "/$defs/model_to_upload/$defs/container_spec/$defs/health_probe": close({
		exec?: matchN(1, [_#defs."/$defs/model_to_upload/$defs/container_spec/$defs/health_probe/$defs/exec", list.MaxItems(1) & [..._#defs."/$defs/model_to_upload/$defs/container_spec/$defs/health_probe/$defs/exec"]])

		// How often (in seconds) to perform the probe.
		period_seconds?: number

		// Number of seconds after which the probe times out.
		timeout_seconds?: number
	})

	_#defs: "/$defs/model_to_upload/$defs/container_spec/$defs/health_probe/$defs/exec": close({
		// Command is the command line to execute inside the container.
		command?: [...string]
	})

	_#defs: "/$defs/model_to_upload/$defs/container_spec/$defs/ports": close({
		// The number of the port on the container.
		container_port!: number
	})

	_#defs: "/$defs/model_to_upload/$defs/container_spec/$defs/startup_probe": close({
		exec?: matchN(1, [_#defs."/$defs/model_to_upload/$defs/container_spec/$defs/startup_probe/$defs/exec", list.MaxItems(1) & [..._#defs."/$defs/model_to_upload/$defs/container_spec/$defs/startup_probe/$defs/exec"]])

		// How often (in seconds) to perform the probe.
		period_seconds?: number

		// Number of seconds after which the probe times out.
		timeout_seconds?: number
	})

	_#defs: "/$defs/model_to_upload/$defs/container_spec/$defs/startup_probe/$defs/exec": close({
		// Command is the command line to execute inside the container.
		command?: [...string]
	})

	_#defs: "/$defs/model_to_upload/$defs/encryption_spec": close({
		// The Cloud KMS resource identifier of the customer-managed encryption key used
		// to protect the model.
		kms_key_name!: string
	})

	_#defs: "/$defs/model_to_upload/$defs/explanation_spec": close({
		// Metadata describing the Model's input and output for explanation. This field
		// uses JSON data as a string.
		metadata?: string

		// Parameters that configure explaining of the Model's predictions. This field
		// uses JSON data as a string.
		parameters?: string
	})
}
