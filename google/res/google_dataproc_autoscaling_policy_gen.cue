package res

import "list"

#google_dataproc_autoscaling_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataproc_autoscaling_policy")
	close({
		id?: string

		// The location where the autoscaling policy should reside.
		// The default value is 'global'.
		location?: string

		// The "resource name" of the autoscaling policy.
		name?: string

		// The policy id. The id must contain only letters (a-z, A-Z),
		// numbers (0-9), underscores (_),
		// and hyphens (-). Cannot begin or end with underscore or hyphen.
		// Must consist of between
		// 3 and 50 characters.
		policy_id!: string
		basic_algorithm?: matchN(1, [#basic_algorithm, list.MaxItems(1) & [...#basic_algorithm]])
		secondary_worker_config?: matchN(1, [#secondary_worker_config, list.MaxItems(1) & [...#secondary_worker_config]])
		project?:  string
		timeouts?: #timeouts
		worker_config?: matchN(1, [#worker_config, list.MaxItems(1) & [...#worker_config]])
	})

	#basic_algorithm: close({
		yarn_config!: matchN(1, [_#defs."/$defs/basic_algorithm/$defs/yarn_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/basic_algorithm/$defs/yarn_config"]])

		// Duration between scaling events. A scaling period starts after
		// the
		// update operation from the previous event has completed.
		//
		// Bounds: [2m, 1d]. Default: 2m.
		cooldown_period?: string
	})

	#secondary_worker_config: close({
		// Maximum number of instances for this group. Note that by
		// default, clusters will not use
		// secondary workers. Required for secondary workers if the
		// minimum secondary instances is set.
		// Bounds: [minInstances, ). Defaults to 0.
		max_instances?: number

		// Minimum number of instances for this group. Bounds: [0,
		// maxInstances]. Defaults to 0.
		min_instances?: number

		// Weight for the instance group, which is used to determine the
		// fraction of total workers
		// in the cluster from this instance group. For example, if
		// primary workers have weight 2,
		// and secondary workers have weight 1, the cluster will have
		// approximately 2 primary workers
		// for each secondary worker.
		//
		// The cluster may not reach the specified balance if constrained
		// by min/max bounds or other
		// autoscaling settings. For example, if maxInstances for
		// secondary workers is 0, then only
		// primary workers will be added. The cluster can also be out of
		// balance when created.
		//
		// If weight is not set on any instance group, the cluster will
		// default to equal weight for
		// all groups: the cluster will attempt to maintain an equal
		// number of workers in each group
		// within the configured size bounds for each group. If weight is
		// set for one group only,
		// the cluster will default to zero weight on the unset group. For
		// example if weight is set
		// only on primary workers, the cluster will use primary workers
		// only and no secondary workers.
		weight?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#worker_config: close({
		// Maximum number of instances for this group.
		max_instances!: number

		// Minimum number of instances for this group. Bounds: [2,
		// maxInstances]. Defaults to 2.
		min_instances?: number

		// Weight for the instance group, which is used to determine the
		// fraction of total workers
		// in the cluster from this instance group. For example, if
		// primary workers have weight 2,
		// and secondary workers have weight 1, the cluster will have
		// approximately 2 primary workers
		// for each secondary worker.
		//
		// The cluster may not reach the specified balance if constrained
		// by min/max bounds or other
		// autoscaling settings. For example, if maxInstances for
		// secondary workers is 0, then only
		// primary workers will be added. The cluster can also be out of
		// balance when created.
		//
		// If weight is not set on any instance group, the cluster will
		// default to equal weight for
		// all groups: the cluster will attempt to maintain an equal
		// number of workers in each group
		// within the configured size bounds for each group. If weight is
		// set for one group only,
		// the cluster will default to zero weight on the unset group. For
		// example if weight is set
		// only on primary workers, the cluster will use primary workers
		// only and no secondary workers.
		weight?: number
	})

	_#defs: "/$defs/basic_algorithm/$defs/yarn_config": close({
		// Timeout for YARN graceful decommissioning of Node Managers.
		// Specifies the
		// duration to wait for jobs to complete before forcefully
		// removing workers
		// (and potentially interrupting jobs). Only applicable to
		// downscaling operations.
		//
		// Bounds: [0s, 1d].
		graceful_decommission_timeout!: string

		// Fraction of average pending memory in the last cooldown period
		// for which to
		// remove workers. A scale-down factor of 1 will result in scaling
		// down so that there
		// is no available memory remaining after the update (more
		// aggressive scaling).
		// A scale-down factor of 0 disables removing workers, which can
		// be beneficial for
		// autoscaling a single job.
		//
		// Bounds: [0.0, 1.0].
		scale_down_factor!: number

		// Minimum scale-down threshold as a fraction of total cluster
		// size before scaling occurs.
		// For example, in a 20-worker cluster, a threshold of 0.1 means
		// the autoscaler must
		// recommend at least a 2 worker scale-down for the cluster to
		// scale. A threshold of 0
		// means the autoscaler will scale down on any recommended change.
		//
		// Bounds: [0.0, 1.0]. Default: 0.0.
		scale_down_min_worker_fraction?: number

		// Fraction of average pending memory in the last cooldown period
		// for which to
		// add workers. A scale-up factor of 1.0 will result in scaling up
		// so that there
		// is no pending memory remaining after the update (more
		// aggressive scaling).
		// A scale-up factor closer to 0 will result in a smaller
		// magnitude of scaling up
		// (less aggressive scaling).
		//
		// Bounds: [0.0, 1.0].
		scale_up_factor!: number

		// Minimum scale-up threshold as a fraction of total cluster size
		// before scaling
		// occurs. For example, in a 20-worker cluster, a threshold of 0.1
		// means the autoscaler
		// must recommend at least a 2-worker scale-up for the cluster to
		// scale. A threshold of
		// 0 means the autoscaler will scale up on any recommended change.
		//
		// Bounds: [0.0, 1.0]. Default: 0.0.
		scale_up_min_worker_fraction?: number
	})
}
