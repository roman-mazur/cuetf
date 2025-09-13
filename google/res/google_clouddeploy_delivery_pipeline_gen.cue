package res

import "list"

#google_clouddeploy_delivery_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_clouddeploy_delivery_pipeline")
	close({
		// User annotations. These attributes can only be set and used by
		// the user, and not by Google Cloud Deploy. See
		// https://google.aip.dev/128#annotations for more details such
		// as format and size limitations.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field `effective_annotations` for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. Information around the state of the Delivery
		// Pipeline.
		condition?: [...close({
			pipeline_ready_condition?: [...close({
				status?:      bool
				update_time?: string
			})]
			targets_present_condition?: [...close({
				missing_targets?: [...string]
				status?:      bool
				update_time?: string
			})]
			targets_type_condition?: [...close({
				error_details?: string
				status?:        bool
			})]
		})]

		// Output only. Time at which the pipeline was created.
		create_time?: string

		// Description of the `DeliveryPipeline`. Max length is 255
		// characters.
		description?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// This checksum is computed by the server based on the value of
		// other fields, and may be sent on update and delete requests to
		// ensure the client has an up-to-date value before proceeding.
		etag?: string

		// Labels are attributes that can be set and used by both the user
		// and by Google Cloud Deploy. Labels must meet the following
		// constraints: * Keys and values can contain only lowercase
		// letters, numeric characters, underscores, and dashes. * All
		// characters must use UTF-8 encoding, and international
		// characters are allowed. * Keys must start with a lowercase
		// letter or international character. * Each resource is limited
		// to a maximum of 64 labels. Both keys and values are
		// additionally constrained to be <= 128 bytes.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field `effective_labels` for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location for the resource
		location!: string
		serial_pipeline?: matchN(1, [#serial_pipeline, list.MaxItems(1) & [...#serial_pipeline]])
		timeouts?: #timeouts

		// Name of the `DeliveryPipeline`. Format is
		// `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
		name!: string

		// The project for the resource
		project?: string

		// When suspended, no new releases or rollouts can be created, but
		// in-progress ones will complete.
		suspended?: bool

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. Unique identifier of the `DeliveryPipeline`.
		uid?: string

		// Output only. Most recent time at which the pipeline was
		// updated.
		update_time?: string
	})

	#serial_pipeline: close({
		stages?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages", [..._#defs."/$defs/serial_pipeline/$defs/stages"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages": close({
		deploy_parameters?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/deploy_parameters", [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/deploy_parameters"]])
		strategy?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy"]])

		// Skaffold profiles to use when rendering the manifest for this
		// stage's `Target`.
		profiles?: [...string]

		// The target_id to which this stage points. This field refers
		// exclusively to the last segment of a target name. For example,
		// this field would just be `my-target` (rather than
		// `projects/project/locations/location/targets/my-target`). The
		// location of the `Target` is inferred to be the same as the
		// location of the `DeliveryPipeline` that contains this `Stage`.
		target_id?: string
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/deploy_parameters": close({
		// Optional. Deploy parameters are applied to targets with match
		// labels. If unspecified, deploy parameters are applied to all
		// targets (including child targets of a multi-target).
		match_target_labels?: [string]: string

		// Required. Values are deploy parameters in key-value pairs.
		values!: [string]: string
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy": close({
		canary?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary"]])
		standard?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/standard", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/standard"]])
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary": close({
		canary_deployment?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/canary_deployment", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/canary_deployment"]])
		custom_canary_deployment?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/custom_canary_deployment", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/custom_canary_deployment"]])
		runtime_config?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config"]])
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/canary_deployment": close({
		postdeploy?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/canary_deployment/$defs/postdeploy", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/canary_deployment/$defs/postdeploy"]])
		predeploy?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/canary_deployment/$defs/predeploy", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/canary_deployment/$defs/predeploy"]])

		// Required. The percentage based deployments that will occur as a
		// part of a `Rollout`. List is expected in ascending order and
		// each integer n is 0 <= n < 100.
		percentages!: [...number]

		// Whether to run verify tests after each percentage deployment.
		verify?: bool
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/canary_deployment/$defs/postdeploy": close({
		// Optional. A sequence of skaffold custom actions to invoke
		// during execution of the postdeploy job.
		actions?: [...string]
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/canary_deployment/$defs/predeploy": close({
		// Optional. A sequence of skaffold custom actions to invoke
		// during execution of the predeploy job.
		actions?: [...string]
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/custom_canary_deployment": close({
		phase_configs?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/custom_canary_deployment/$defs/phase_configs", [_, ...] & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/custom_canary_deployment/$defs/phase_configs"]])
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/custom_canary_deployment/$defs/phase_configs": close({
		// Required. Percentage deployment for the phase.
		percentage!: number

		// Required. The ID to assign to the `Rollout` phase. This value
		// must consist of lower-case letters, numbers, and hyphens,
		// start with a letter and end with a letter or a number, and
		// have a max length of 63 characters. In other words, it must
		// match the following regex:
		// `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
		phase_id!: string

		// Skaffold profiles to use when rendering the manifest for this
		// phase. These are in addition to the profiles list specified in
		// the `DeliveryPipeline` stage.
		profiles?: [...string]

		// Whether to run verify tests after the deployment.
		verify?: bool
		postdeploy?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/custom_canary_deployment/$defs/phase_configs/$defs/postdeploy", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/custom_canary_deployment/$defs/phase_configs/$defs/postdeploy"]])
		predeploy?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/custom_canary_deployment/$defs/phase_configs/$defs/predeploy", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/custom_canary_deployment/$defs/phase_configs/$defs/predeploy"]])
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/custom_canary_deployment/$defs/phase_configs/$defs/postdeploy": close({
		// Optional. A sequence of skaffold custom actions to invoke
		// during execution of the postdeploy job.
		actions?: [...string]
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/custom_canary_deployment/$defs/phase_configs/$defs/predeploy": close({
		// Optional. A sequence of skaffold custom actions to invoke
		// during execution of the predeploy job.
		actions?: [...string]
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config": close({
		cloud_run?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/cloud_run", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/cloud_run"]])
		kubernetes?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/kubernetes", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/kubernetes"]])
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/cloud_run": close({
		// Whether Cloud Deploy should update the traffic stanza in a
		// Cloud Run Service on the user's behalf to facilitate traffic
		// splitting. This is required to be true for CanaryDeployments,
		// but optional for CustomCanaryDeployments.
		automatic_traffic_control?: bool

		// Optional. A list of tags that are added to the canary revision
		// while the canary phase is in progress.
		canary_revision_tags?: [...string]

		// Optional. A list of tags that are added to the prior revision
		// while the canary phase is in progress.
		prior_revision_tags?: [...string]

		// Optional. A list of tags that are added to the final stable
		// revision when the stable phase is applied.
		stable_revision_tags?: [...string]
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/kubernetes": close({
		gateway_service_mesh?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/kubernetes/$defs/gateway_service_mesh", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/kubernetes/$defs/gateway_service_mesh"]])
		service_networking?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/kubernetes/$defs/service_networking", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/kubernetes/$defs/service_networking"]])
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/kubernetes/$defs/gateway_service_mesh": close({
		// Required. Name of the Kubernetes Deployment whose traffic is
		// managed by the specified HTTPRoute and Service.
		deployment!: string

		// Required. Name of the Gateway API HTTPRoute.
		http_route!: string

		// Optional. The label to use when selecting Pods for the
		// Deployment and Service resources. This label must already be
		// present in both resources.
		pod_selector_label?: string

		// Optional. The time to wait for route updates to propagate. The
		// maximum configurable time is 3 hours, in seconds format. If
		// unspecified, there is no wait time.
		route_update_wait_time?: string

		// Required. Name of the Kubernetes Service.
		service!: string

		// Optional. The amount of time to migrate traffic back from the
		// canary Service to the original Service during the stable phase
		// deployment. If specified, must be between 15s and 3600s. If
		// unspecified, there is no cutback time.
		stable_cutback_duration?: string
		route_destinations?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/kubernetes/$defs/gateway_service_mesh/$defs/route_destinations", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/kubernetes/$defs/gateway_service_mesh/$defs/route_destinations"]])
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/kubernetes/$defs/gateway_service_mesh/$defs/route_destinations": close({
		// Required. The clusters where the Gateway API HTTPRoute resource
		// will be deployed to. Valid entries include the associated
		// entities IDs configured in the Target resource and "@self" to
		// include the Target cluster.
		destination_ids!: [...string]

		// Optional. Whether to propagate the Kubernetes Service to the
		// route destination clusters. The Service will always be
		// deployed to the Target cluster even if the HTTPRoute is not.
		// This option may be used to facilitiate successful DNS lookup
		// in the route destination clusters. Can only be set to true if
		// destinations are specified.
		propagate_service?: bool
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/canary/$defs/runtime_config/$defs/kubernetes/$defs/service_networking": close({
		// Required. Name of the Kubernetes Deployment whose traffic is
		// managed by the specified Service.
		deployment!: string

		// Optional. Whether to disable Pod overprovisioning. If Pod
		// overprovisioning is disabled then Cloud Deploy will limit the
		// number of total Pods used for the deployment strategy to the
		// number of Pods the Deployment has on the cluster.
		disable_pod_overprovisioning?: bool

		// Optional. The label to use when selecting Pods for the
		// Deployment resource. This label must already be present in the
		// Deployment.
		pod_selector_label?: string

		// Required. Name of the Kubernetes Service.
		service!: string
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/standard": close({
		postdeploy?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/standard/$defs/postdeploy", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/standard/$defs/postdeploy"]])
		predeploy?: matchN(1, [_#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/standard/$defs/predeploy", list.MaxItems(1) & [..._#defs."/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/standard/$defs/predeploy"]])

		// Whether to verify a deployment.
		verify?: bool
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/standard/$defs/postdeploy": close({
		// Optional. A sequence of skaffold custom actions to invoke
		// during execution of the postdeploy job.
		actions?: [...string]
	})

	_#defs: "/$defs/serial_pipeline/$defs/stages/$defs/strategy/$defs/standard/$defs/predeploy": close({
		// Optional. A sequence of skaffold custom actions to invoke
		// during execution of the predeploy job.
		actions?: [...string]
	})
}
