package res

import "list"

#google_firebase_app_hosting_traffic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_firebase_app_hosting_traffic")
	close({
		// Id of the backend that this Traffic config applies to
		backend!: string

		// Time at which the backend was created.
		create_time?: string

		// Current state of traffic allocation for the backend.
		// When setting 'target', this field may differ for some time
		// until the desired state is reached.
		current?: [...close({
			splits?: [...close({
				build?:   string
				percent?: number
			})]
		})]

		// Time at which the backend was deleted.
		delete_time?: string

		// Server-computed checksum based on other values; may be sent
		// on update or delete to ensure operation is done on expected
		// resource.
		etag?: string
		id?:   string

		// The location the Backend that this Traffic config applies to
		location!: string

		// Identifier. The resource name of the backend traffic config
		//
		// Format:
		//
		// 'projects/{project}/locations/{locationId}/backends/{backendId}/traffic'.
		name?: string
		rollout_policy?: matchN(1, [#rollout_policy, list.MaxItems(1) & [...#rollout_policy]])
		target?: matchN(1, [#target, list.MaxItems(1) & [...#target]])
		timeouts?: #timeouts

		// System-assigned, unique identifier.
		uid?:     string
		project?: string

		// Time at which the backend was last updated.
		update_time?: string
	})

	#rollout_policy: close({
		// Specifies a branch that triggers a new build to be started with
		// this
		// policy. If not set, no automatic rollouts will happen.
		codebase_branch?: string

		// A flag that, if true, prevents rollouts from being created via
		// this RolloutPolicy.
		disabled?: bool

		// If disabled is set, the time at which the rollouts were
		// disabled.
		disabled_time?: string
	})

	#target: close({
		splits?: matchN(1, [_#defs."/$defs/target/$defs/splits", [_, ...] & [..._#defs."/$defs/target/$defs/splits"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/target/$defs/splits": close({
		// The build that traffic is being routed to.
		build!: string

		// The percentage of traffic to send to the build. Currently must
		// be 100 or 0.
		percent!: number
	})
}
