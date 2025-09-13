package res

import "list"

#google_vertex_ai_deployment_resource_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vertex_ai_deployment_resource_pool")
	close({
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		create_time?: string
		id?:          string

		// The resource name of deployment resource pool. The maximum
		// length is 63 characters, and valid characters are
		// '/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/'.
		name!:    string
		project?: string
		dedicated_resources?: matchN(1, [#dedicated_resources, list.MaxItems(1) & [...#dedicated_resources]])

		// The region of deployment resource pool. eg us-central1
		region?:   string
		timeouts?: #timeouts
	})

	#dedicated_resources: close({
		autoscaling_metric_specs?: matchN(1, [_#defs."/$defs/dedicated_resources/$defs/autoscaling_metric_specs", [..._#defs."/$defs/dedicated_resources/$defs/autoscaling_metric_specs"]])
		machine_spec?: matchN(1, [_#defs."/$defs/dedicated_resources/$defs/machine_spec", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/dedicated_resources/$defs/machine_spec"]])

		// The maximum number of replicas this DeployedModel may be
		// deployed on when the traffic against it increases. If the
		// requested value is too large, the deployment will error, but
		// if deployment succeeds then the ability to scale the model to
		// that many replicas is guaranteed (barring service outages). If
		// traffic against the DeployedModel increases beyond what its
		// replicas at maximum may handle, a portion of the traffic will
		// be dropped. If this value is not provided, will use
		// min_replica_count as the default value. The value of this
		// field impacts the charge against Vertex CPU and GPU quotas.
		// Specifically, you will be charged for max_replica_count *
		// number of cores in the selected machine type) and
		// (max_replica_count * number of GPUs per replica in the
		// selected machine type).
		max_replica_count?: number

		// The minimum number of machine replicas this DeployedModel will
		// be always deployed on. This value must be greater than or
		// equal to 1. If traffic against the DeployedModel increases, it
		// may dynamically be deployed onto more replicas, and as traffic
		// decreases, some of these extra replicas may be freed.
		min_replica_count!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/dedicated_resources/$defs/autoscaling_metric_specs": close({
		// The resource metric name. Supported metrics: For Online
		// Prediction: *
		// 'aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle'
		// *
		// 'aiplatform.googleapis.com/prediction/online/cpu/utilization'
		metric_name!: string

		// The target resource utilization in percentage (1% - 100%) for
		// the given metric; once the real usage deviates from the target
		// by a certain percentage, the machine replicas change. The
		// default value is 60 (representing 60%) if not provided.
		target?: number
	})

	_#defs: "/$defs/dedicated_resources/$defs/machine_spec": close({
		// The number of accelerators to attach to the machine.
		accelerator_count?: number

		// The type of accelerator(s) that may be attached to the machine
		// as per accelerator_count. See possible values
		// [here](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/MachineSpec#AcceleratorType).
		accelerator_type?: string

		// The type of the machine. See the [list of machine types
		// supported for
		// prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types).
		machine_type?: string
	})
}
