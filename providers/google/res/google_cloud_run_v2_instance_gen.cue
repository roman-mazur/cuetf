package res

import "list"

google_cloud_run_v2_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloud_run_v2_instance")
	close({
		containers!: matchN(1, [#containers, [_, ...] & [...#containers]])
		timeouts?: #timeouts
		volumes?: matchN(1, [#volumes, [...#volumes]])

		// Unstructured key value map that may be set by external tools to store and
		// arbitrary metadata. They are not queryable and should be preserved when
		// modifying objects.
		// Cloud Run API v2 does not support annotations with 'run.googleapis.com',
		// 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev'
		// namespaces, and they will be rejected in new resources.
		// This field follows Kubernetes annotations' namespacing, limits, and rules.
		//
		// **Note**: This field is non-authoritative, and will only manage the
		// annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of the annotations
		// present on the resource.
		annotations?: [string]: string

		// Arbitrary identifier for the API client.
		client?: string

		// Arbitrary version identifier for the API client.
		client_version?: string

		// The Conditions of all other associated sub-resources. They contain additional
		// diagnostics information in case the Instance does not reach its Serving
		// state. See comments in reconciling for additional information on
		// reconciliation process in Cloud Run.
		conditions?: [...close({
			instance_reason?:      string
			last_transition_time?: string
			message?:              string
			reason?:               string
			severity?:             string
			state?:                string
			type?:                 string
		})]

		// Status information for each of the specified containers. The status includes
		// the resolved digest for specified images.
		container_statuses?: [...close({
			image_digest?: string
			name?:         string
		})]

		// The creation time.
		create_time?: string

		// Email address of the authenticated creator.
		creator?: string

		// Disables public resolution of the default URI of this Instance.
		default_uri_disabled?: bool

		// The deletion time.
		delete_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// All of annotations (key/value pairs) present on the resource in GCP,
		// including the annotations configured through Terraform, other clients and
		// services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// A reference to a customer managed encryption key (CMEK) to use to encrypt
		// this container image. For more information, go to
		// https://cloud.google.com/run/docs/securing/using-cmek
		encryption_key?: string

		// The action to take if the encryption key is revoked. Possible values: ["PREVENT_NEW", "SHUTDOWN"]
		encryption_key_revocation_action?: string

		// If encryptionKeyRevocationAction is SHUTDOWN, the duration before shutting
		// down all instances. The minimum increment is 1 hour.
		// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
		encryption_key_shutdown_duration?: string

		// A system-generated fingerprint for this version of the resource. May be used
		// to detect modification conflict during updates.
		etag?: string

		// For a deleted resource, the time after which it will be permanently deleted.
		expire_time?: string

		// A number that monotonically increases every time the user modifies the
		// desired state. Please note that unlike v1, this is an int64 value. As with
		// most Google APIs, its JSON representation will be a string instead of an
		// integer.
		generation?: string
		id?:         string

		// Provides the ingress settings for this Instance. On output, returns the
		// currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no
		// revision is active. Possible values: ["INGRESS_TRAFFIC_ALL",
		// "INGRESS_TRAFFIC_INTERNAL_ONLY", "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER"]
		ingress?: string

		// Disables IAM permission check for run.routes.invoke for callers of this
		// Instance. For more information, visit
		// https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
		invoker_iam_disabled?: bool

		// Unstructured key value map that can be used to organize and categorize
		// objects. User-provided labels are shared with Google's billing system, so
		// they can be used to filter, or break down billing charges by team,
		// component,
		// environment, state, etc. For more information, visit
		// https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels
		// or https://cloud.google.com/run/docs/configuring/labels.
		// Cloud Run API v2 does not support labels with 'run.googleapis.com',
		// 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev'
		// namespaces, and they will be rejected.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// Email address of the last authenticated modifier.
		last_modifier?: string

		// The launch stage as defined by [Google Cloud Platform Launch
		// Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run
		// supports ALPHA, BETA, and GA. If no value is specified, GA is assumed. Set
		// the launch stage to a preview stage on input to allow use of preview
		// features in that stage. On read (or output), describes whether the resource
		// uses preview features.
		// For example, if ALPHA is provided as input, but only BETA and GA-level
		// features are used, this field will be BETA on output. Possible values:
		// ["UNIMPLEMENTED", "PRELAUNCH", "EARLY_ACCESS", "ALPHA", "BETA", "GA",
		// "DEPRECATED"]
		launch_stage?: string

		// The location of the cloud run instance
		location!: string

		// The Google Console URI to obtain logs for the Instance.
		log_uri?: string

		// Name of the Instance.
		name!: string

		// The generation of this Instance currently serving traffic. See comments in
		// reconciling for additional information on reconciliation process in Cloud
		// Run. Please note that unlike v1, this is an int64 value. As with most Google
		// APIs, its JSON representation will be a string instead of an integer.
		observed_generation?: string

		// Returns true if the Instance is currently being acted upon by the system to
		// bring it into the desired state.
		// When a new Instance is created, or an existing one is updated, Cloud Run will
		// asynchronously perform all necessary steps to bring the Instance to the
		// desired serving state. This process is called reconciliation. While
		// reconciliation is in process, observedGeneration will have a transient value
		// that might mismatch the intended state: Once reconciliation is over (and
		// this field is false), there are two possible outcomes: reconciliation
		// succeeded and the serving state matches the Instance, or there was an error,
		// and reconciliation failed. This state can be found in
		// terminalCondition.state.
		reconciling?: bool
		project?:     string

		// Restart policy for the Instance. If not provided, the default is ON_FAILURE.
		// Possible values: ["ALWAYS", "ON_FAILURE", "NEVER"]
		restart_policy?: string

		// Reserved for future use. True if this service satisfies zone separation.
		satisfies_pzs?: bool

		// Email address of the IAM service account associated with the Instance. The
		// service account represents the identity of the running Instance, and
		// determines what permissions the instance has.
		service_account?: string

		// The Condition of this Instance, containing its readiness status, and detailed
		// error information in case it did not reach a serving state. See comments in
		// reconciling for additional information on reconciliation process in Cloud
		// Run.
		terminal_condition?: [...close({
			instance_reason?:      string
			last_transition_time?: string
			message?:              string
			reason?:               string
			severity?:             string
			state?:                string
			type?:                 string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Server assigned unique identifier for the instance. The value is a UUID4
		// string and guaranteed to remain unchanged until the resource is deleted.
		uid?: string

		// The last-modified time.
		update_time?: string

		// All URLs serving traffic for this Instance.
		urls?: [...string]
	})

	#containers: close({
		env?: matchN(1, [_#defs."/$defs/containers/$defs/env", [..._#defs."/$defs/containers/$defs/env"]])
		liveness_probe?: matchN(1, [_#defs."/$defs/containers/$defs/liveness_probe", list.MaxItems(1) & [..._#defs."/$defs/containers/$defs/liveness_probe"]])
		ports?: matchN(1, [_#defs."/$defs/containers/$defs/ports", [..._#defs."/$defs/containers/$defs/ports"]])
		resources?: matchN(1, [_#defs."/$defs/containers/$defs/resources", list.MaxItems(1) & [..._#defs."/$defs/containers/$defs/resources"]])
		startup_probe?: matchN(1, [_#defs."/$defs/containers/$defs/startup_probe", list.MaxItems(1) & [..._#defs."/$defs/containers/$defs/startup_probe"]])
		volume_mounts?: matchN(1, [_#defs."/$defs/containers/$defs/volume_mounts", [..._#defs."/$defs/containers/$defs/volume_mounts"]])

		// Arguments to the entrypoint. The docker image's CMD is used if this is not
		// provided. Variable references $(VAR_NAME) are expanded using the container's
		// environment. If a variable cannot be resolved, the reference in the input
		// string will be unchanged. The $(VAR_NAME) syntax can be escaped with a
		// double $$, ie: $$(VAR_NAME). Escaped references will never be expanded,
		// regardless of whether the variable exists or not. More info:
		// https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
		args?: [...string]

		// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT
		// is used if this is not provided. Variable references $(VAR_NAME) are
		// expanded using the container's environment. If a variable cannot be
		// resolved, the reference in the input string will be unchanged. The
		// $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME).
		// Escaped references will never be expanded, regardless of whether the
		// variable exists or not. More info:
		// https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
		command?: [...string]

		// URL of the Container image in Google Container Registry or Google Artifact
		// Registry. More info: https://kubernetes.io/docs/concepts/containers/images
		image!: string

		// Name of the container specified as a DNS_LABEL.
		name?: string

		// Container's working directory. If not specified, the container runtime's
		// default will be used, which might be configured in the container image.
		working_dir?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#volumes: close({
		cloud_sql_instance?: matchN(1, [_#defs."/$defs/volumes/$defs/cloud_sql_instance", list.MaxItems(1) & [..._#defs."/$defs/volumes/$defs/cloud_sql_instance"]])
		empty_dir?: matchN(1, [_#defs."/$defs/volumes/$defs/empty_dir", list.MaxItems(1) & [..._#defs."/$defs/volumes/$defs/empty_dir"]])
		gcs?: matchN(1, [_#defs."/$defs/volumes/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/volumes/$defs/gcs"]])
		nfs?: matchN(1, [_#defs."/$defs/volumes/$defs/nfs", list.MaxItems(1) & [..._#defs."/$defs/volumes/$defs/nfs"]])
		secret?: matchN(1, [_#defs."/$defs/volumes/$defs/secret", list.MaxItems(1) & [..._#defs."/$defs/volumes/$defs/secret"]])

		// Volume's name.
		name!: string
	})

	_#defs: "/$defs/containers/$defs/env": close({
		value_source?: matchN(1, [_#defs."/$defs/containers/$defs/env/$defs/value_source", list.MaxItems(1) & [..._#defs."/$defs/containers/$defs/env/$defs/value_source"]])

		// Name of the environment variable. Must be a C_IDENTIFIER, and may not exceed 32768 characters.
		name!: string

		// Literal value of the environment variable. Defaults to "" and the maximum
		// allowed length is 32768 characters. Variable references are not supported in
		// Cloud Run.
		value?: string
	})

	_#defs: "/$defs/containers/$defs/env/$defs/value_source": close({
		secret_key_ref?: matchN(1, [_#defs."/$defs/containers/$defs/env/$defs/value_source/$defs/secret_key_ref", list.MaxItems(1) & [..._#defs."/$defs/containers/$defs/env/$defs/value_source/$defs/secret_key_ref"]])
	})

	_#defs: "/$defs/containers/$defs/env/$defs/value_source/$defs/secret_key_ref": close({
		// The name of the secret in Cloud Secret Manager. Format: {secretName} if the
		// secret is in the same project. projects/{project}/secrets/{secretName} if
		// the secret is in a different project.
		secret!: string

		// The Cloud Secret Manager secret version. Can be 'latest' for the latest value
		// or an integer for a specific version.
		version!: string
	})

	_#defs: "/$defs/containers/$defs/liveness_probe": close({
		grpc?: matchN(1, [_#defs."/$defs/containers/$defs/liveness_probe/$defs/grpc", list.MaxItems(1) & [..._#defs."/$defs/containers/$defs/liveness_probe/$defs/grpc"]])
		http_get?: matchN(1, [_#defs."/$defs/containers/$defs/liveness_probe/$defs/http_get", list.MaxItems(1) & [..._#defs."/$defs/containers/$defs/liveness_probe/$defs/http_get"]])

		// Optional. Minimum consecutive failures for the probe to be considered failed
		// after having succeeded. Defaults to 3. Minimum value is 1.
		failure_threshold?: number

		// Optional. Number of seconds after the container has started before the probe
		// is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for
		// liveness probe is 3600. Maximum value for startup probe is 240.
		initial_delay_seconds?: number

		// Optional. How often (in seconds) to perform the probe. Default to 10 seconds.
		// Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value
		// for startup probe is 240. Must be greater or equal than timeout_seconds.
		period_seconds?: number

		// Optional. Number of seconds after which the probe times out. Defaults to 1
		// second. Minimum value is 1. Maximum value is 3600. Must be smaller than
		// period_seconds.
		timeout_seconds?: number
	})

	_#defs: "/$defs/containers/$defs/liveness_probe/$defs/grpc": close({
		// Optional. Port number of the gRPC service. Number must be in the range 1 to
		// 65535. If not specified, defaults to the exposed port of the container,
		// which is the value of container.ports[0].containerPort.
		port?: number

		// Optional. Service is the name of the service to place in the gRPC
		// HealthCheckRequest (see
		// https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this
		// is not specified, the default behavior is defined by gRPC
		service?: string
	})

	_#defs: "/$defs/containers/$defs/liveness_probe/$defs/http_get": close({
		http_headers?: matchN(1, [_#defs."/$defs/containers/$defs/liveness_probe/$defs/http_get/$defs/http_headers", [..._#defs."/$defs/containers/$defs/liveness_probe/$defs/http_get/$defs/http_headers"]])

		// Optional. Path to access on the HTTP server. Defaults to '/'.
		path?: string

		// Optional. Port number to access on the container. Must be in the range 1 to
		// 65535. If not specified, defaults to the exposed port of the container,
		// which is the value of container.ports[0].containerPort.
		port?: number
	})

	_#defs: "/$defs/containers/$defs/liveness_probe/$defs/http_get/$defs/http_headers": close({
		// Required. The header field name
		name?: string

		// Optional. The header field value
		value?: string
	})

	_#defs: "/$defs/containers/$defs/ports": close({
		// Port number the container listens on. This must be a valid TCP port number, 0
		// < containerPort < 65536.
		container_port?: number

		// If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
		name?: string
	})

	_#defs: "/$defs/containers/$defs/resources": close({
		// Only memory and CPU are supported. Use key 'cpu' for CPU limit, 'memory' for
		// memory limit. Note: The only supported values for CPU are '1', '2', '4',
		// '6', and '8'. Setting 4 CPU requires at least 2Gi of memory, setting 6 or
		// more CPU requires at least 4Gi of memory. The values of the map is string
		// form of the 'quantity' k8s type:
		// https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
		limits?: [string]: string
	})

	_#defs: "/$defs/containers/$defs/startup_probe": close({
		grpc?: matchN(1, [_#defs."/$defs/containers/$defs/startup_probe/$defs/grpc", list.MaxItems(1) & [..._#defs."/$defs/containers/$defs/startup_probe/$defs/grpc"]])
		http_get?: matchN(1, [_#defs."/$defs/containers/$defs/startup_probe/$defs/http_get", list.MaxItems(1) & [..._#defs."/$defs/containers/$defs/startup_probe/$defs/http_get"]])
		tcp_socket?: matchN(1, [_#defs."/$defs/containers/$defs/startup_probe/$defs/tcp_socket", list.MaxItems(1) & [..._#defs."/$defs/containers/$defs/startup_probe/$defs/tcp_socket"]])

		// Optional. Minimum consecutive failures for the probe to be considered failed
		// after having succeeded. Defaults to 3. Minimum value is 1.
		failure_threshold?: number

		// Optional. Number of seconds after the container has started before the probe
		// is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for
		// liveness probe is 3600. Maximum value for startup probe is 240.
		initial_delay_seconds?: number

		// Optional. How often (in seconds) to perform the probe. Default to 10 seconds.
		// Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value
		// for startup probe is 240. Must be greater or equal than timeout_seconds.
		period_seconds?: number

		// Optional. Number of seconds after which the probe times out. Defaults to 1
		// second. Minimum value is 1. Maximum value is 3600. Must be smaller than
		// period_seconds.
		timeout_seconds?: number
	})

	_#defs: "/$defs/containers/$defs/startup_probe/$defs/grpc": close({
		// Optional. Port number of the gRPC service. Number must be in the range 1 to
		// 65535. If not specified, defaults to the exposed port of the container,
		// which is the value of container.ports[0].containerPort.
		port?: number

		// Optional. Service is the name of the service to place in the gRPC
		// HealthCheckRequest (see
		// https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this
		// is not specified, the default behavior is defined by gRPC
		service?: string
	})

	_#defs: "/$defs/containers/$defs/startup_probe/$defs/http_get": close({
		http_headers?: matchN(1, [_#defs."/$defs/containers/$defs/startup_probe/$defs/http_get/$defs/http_headers", [..._#defs."/$defs/containers/$defs/startup_probe/$defs/http_get/$defs/http_headers"]])

		// Optional. Path to access on the HTTP server. Defaults to '/'.
		path?: string

		// Optional. Port number to access on the container. Must be in the range 1 to
		// 65535. If not specified, defaults to the exposed port of the container,
		// which is the value of container.ports[0].containerPort.
		port?: number
	})

	_#defs: "/$defs/containers/$defs/startup_probe/$defs/http_get/$defs/http_headers": close({
		// Required. The header field name
		name?: string

		// Optional. The header field value
		value?: string
	})

	_#defs: "/$defs/containers/$defs/startup_probe/$defs/tcp_socket": close({
		// Optional. Port number to access on the container. Must be in the range 1 to
		// 65535. If not specified, defaults to the exposed port of the container,
		// which is the value of container.ports[0].containerPort.
		port?: number
	})

	_#defs: "/$defs/containers/$defs/volume_mounts": close({
		// Path within the container at which the volume should be mounted. Must not
		// contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise
		// be /cloudsql. All instances defined in the Volume will be available as
		// /cloudsql/[instance]. For more information on Cloud SQL volumes, visit
		// https://cloud.google.com/sql/docs/mysql/connect-run
		mount_path!: string

		// This must match the Name of a Volume.
		name!: string

		// Path within the volume from which the container's volume should be mounted.
		sub_path?: string
	})

	_#defs: "/$defs/volumes/$defs/cloud_sql_instance": close({
		// The Cloud SQL instance connection names, as can be found in
		// https://console.cloud.google.com/sql/instances. Visit
		// https://cloud.google.com/sql/docs/mysql/connect-run for more information on
		// how to connect Cloud SQL and Cloud Run. Format:
		// {project}:{location}:{instance}
		instances?: [...string]
	})

	_#defs: "/$defs/volumes/$defs/empty_dir": close({
		// The different types of medium supported for EmptyDir. Default value: "MEMORY"
		// Possible values: ["MEMORY", "DISK"]
		medium?: string

		// Limit on the storage usable by this EmptyDir volume. The size limit is also
		// applicable for memory medium. The maximum usage on memory medium EmptyDir
		// would be the minimum value between the SizeLimit specified here and the sum
		// of memory limits of all containers in a pod. This field's values are of the
		// 'Quantity' k8s type:
		// https://kubernetes.io/docs/reference/kubernetes-api/common-definitions/quantity/.
		// The default is nil which means that the limit is undefined. More info:
		// https://kubernetes.io/docs/concepts/storage/volumes/#emptydir.
		size_limit?: string
	})

	_#defs: "/$defs/volumes/$defs/gcs": close({
		// GCS Bucket name
		bucket!: string

		// A list of flags to pass to the gcsfuse command for configuring this volume.
		// Flags should be passed without leading dashes.
		mount_options?: [...string]

		// If true, mount the GCS bucket as read-only
		read_only?: bool
	})

	_#defs: "/$defs/volumes/$defs/nfs": close({
		// Path that is exported by the NFS server.
		path!: string

		// If true, mount the NFS volume as read only
		read_only?: bool

		// Hostname or IP address of the NFS server
		server!: string
	})

	_#defs: "/$defs/volumes/$defs/secret": close({
		items?: matchN(1, [_#defs."/$defs/volumes/$defs/secret/$defs/items", [..._#defs."/$defs/volumes/$defs/secret/$defs/items"]])

		// Integer representation of mode bits to use on created files by default. Must
		// be a value between 0000 and 0777 (octal), defaulting to 0444. Directories
		// within the path are not affected by this setting.
		default_mode?: number

		// The name of the secret in Cloud Secret Manager. Format: {secret} if the
		// secret is in the same project. projects/{project}/secrets/{secret} if the
		// secret is in a different project.
		secret!: string
	})

	_#defs: "/$defs/volumes/$defs/secret/$defs/items": close({
		// Integer octal mode bits to use on this file, must be a value between 01 and
		// 0777 (octal). If 0 or not set, the Volume's default mode will be used.
		mode?: number

		// The relative path of the secret in the container.
		path!: string

		// The Cloud Secret Manager secret version. Can be 'latest' for the latest value
		// or an integer for a specific version
		version?: string
	})
}
