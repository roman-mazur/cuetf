package res

import "list"

#google_compute_preview_feature: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_preview_feature")
	close({
		// The activation status of the preview feature. Possible values:
		// ["ENABLED", "ACTIVATION_STATE_UNSPECIFIED"]
		activation_status!: string

		// The name of the preview feature.
		name!: string
		id?:   string
		rollout_operation?: matchN(1, [#rollout_operation, list.MaxItems(1) & [...#rollout_operation]])
		timeouts?: #timeouts
		project?:  string
	})

	#rollout_operation: close({
		rollout_input?: matchN(1, [_#defs."/$defs/rollout_operation/$defs/rollout_input", list.MaxItems(1) & [..._#defs."/$defs/rollout_operation/$defs/rollout_input"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rollout_operation/$defs/rollout_input": close({
		// Predefined rollout plans. Possible values:
		// ["ROLLOUT_PLAN_FAST_ROLLOUT"]
		predefined_rollout_plan!: string
	})
}
