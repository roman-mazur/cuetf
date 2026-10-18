package res

import "list"

google_vertex_ai_online_evaluator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_online_evaluator")
	close({
		cloud_observability!: matchN(1, [#cloud_observability, list.MaxItems(1) & [_, ...] & [...#cloud_observability]])
		config!: matchN(1, [#config, list.MaxItems(1) & [_, ...] & [...#config]])
		metric_sources!: matchN(1, [#metric_sources, [_, ...] & [...#metric_sources]])
		timeouts?: #timeouts

		// The name of the agent that the OnlineEvaluator evaluates periodically.
		// This value is used to filter the traces with a matching cloud.resource_id
		// and link the evaluation results with relevant dashboards/UIs. This field
		// is immutable; once set, it cannot be changed.
		agent_resource!: string

		// Timestamp when the OnlineEvaluator was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Human-readable name for the OnlineEvaluator. The name doesn't have to be
		// unique. The name can consist of any UTF-8 characters. The maximum length
		// is 63 characters.
		display_name?: string
		id?:           string

		// The resource name of the OnlineEvaluator. This is the final component of
		// the resource path.
		// Format: projects/{{project}}/locations/{{region}}/onlineEvaluators/{{id}}.
		name?: string

		// The region of the OnlineEvaluator (e.g. us-central1). If unset, the provider's region is used.
		region?:  string
		project?: string

		// The state of the OnlineEvaluator. Possible values are: ACTIVE, SUSPENDED,
		// FAILED, WARNING.
		state?: string

		// Contains additional information about the state of the OnlineEvaluator.
		// This is used to provide more details in the event of a failure.
		state_details?: [...close({
			message?: string
		})]

		// Timestamp when the OnlineEvaluator was last updated.
		update_time?: string
	})

	#cloud_observability: close({
		open_telemetry!: matchN(1, [_#defs."/$defs/cloud_observability/$defs/open_telemetry", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/cloud_observability/$defs/open_telemetry"]])
		session_scope?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/session_scope", list.MaxItems(1) & [..._#defs."/$defs/cloud_observability/$defs/session_scope"]])
		trace_scope?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/trace_scope", list.MaxItems(1) & [..._#defs."/$defs/cloud_observability/$defs/trace_scope"]])

		// Optional log view that will be used to query logs. If empty, the
		// project's default view ('projects/{{project_id}}') will be used.
		log_view?: string

		// Optional trace view that will be used to query traces. If empty, the
		// '_AllSpans' view from the '_Trace' US bucket will be used.
		trace_view?: string
	})

	#config: close({
		random_sampling?: matchN(1, [_#defs."/$defs/config/$defs/random_sampling", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/random_sampling"]])

		// The maximum number of evaluations to perform per run. If set to 0, the
		// number is unbounded.
		max_evaluated_samples_per_run?: string
	})

	#metric_sources: close({
		// Inline metric config, provided as a JSON-formatted string using
		// camelCase field names to match the API format (see the
		// [Metric API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/Metric)).
		// The suggested predefined 'metricSpecName' values depend on the
		// evaluation scope configured in 'cloud_observability'; a predefined
		// metric must match the scope or the create request will be rejected:
		// - 'trace_scope' (single trace): 'final_response_quality_v1',
		// 'tool_use_quality_v1', 'hallucination_v1', 'safety_v1'.
		// - 'session_scope' (multi-turn session):
		// 'multi_turn_task_success_v1', 'multi_turn_tool_use_quality_v1',
		// 'multi_turn_trajectory_quality_v1'.
		metric?: string

		// Resource name of a registered metric (a
		// 'google_vertex_ai_evaluation_metric'), e.g.
		// projects/{{project}}/locations/{{region}}/evaluationMetrics/{{id}}.
		metric_resource_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/cloud_observability/$defs/open_telemetry": close({
		// Defines which version of the OTel Semantic Convention the data
		// follows. Can be "1.39.0" or newer.
		semconv_version!: string
	})

	_#defs: "/$defs/cloud_observability/$defs/session_scope": close({
		filter?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter", [..._#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter"]])
		inactivity_trigger?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/session_scope/$defs/inactivity_trigger", list.MaxItems(1) & [..._#defs."/$defs/cloud_observability/$defs/session_scope/$defs/inactivity_trigger"]])
	})

	_#defs: "/$defs/cloud_observability/$defs/session_scope/$defs/filter": close({
		duration?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/duration", list.MaxItems(1) & [..._#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/duration"]])
		model_call_errors?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/model_call_errors", list.MaxItems(1) & [..._#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/model_call_errors"]])
		model_calls?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/model_calls", list.MaxItems(1) & [..._#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/model_calls"]])
		tool_call_errors?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/tool_call_errors", list.MaxItems(1) & [..._#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/tool_call_errors"]])
		tool_calls?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/tool_calls", list.MaxItems(1) & [..._#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/tool_calls"]])
		total_token_usage?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/total_token_usage", list.MaxItems(1) & [..._#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/total_token_usage"]])
		user_turns?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/user_turns", list.MaxItems(1) & [..._#defs."/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/user_turns"]])
	})

	_#defs: "/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/duration": close({
		// The comparison operator to apply. Possible values are:
		// LESS, LESS_OR_EQUAL, EQUAL, NOT_EQUAL, GREATER_OR_EQUAL,
		// GREATER.
		comparison_operator!: string

		// The value to compare against.
		value!: number
	})

	_#defs: "/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/model_call_errors": close({
		// The comparison operator to apply. Possible values are:
		// LESS, LESS_OR_EQUAL, EQUAL, NOT_EQUAL, GREATER_OR_EQUAL,
		// GREATER.
		comparison_operator!: string

		// The value to compare against.
		value!: number
	})

	_#defs: "/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/model_calls": close({
		// The comparison operator to apply. Possible values are:
		// LESS, LESS_OR_EQUAL, EQUAL, NOT_EQUAL, GREATER_OR_EQUAL,
		// GREATER.
		comparison_operator!: string

		// The value to compare against.
		value!: number
	})

	_#defs: "/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/tool_call_errors": close({
		// The comparison operator to apply. Possible values are:
		// LESS, LESS_OR_EQUAL, EQUAL, NOT_EQUAL, GREATER_OR_EQUAL,
		// GREATER.
		comparison_operator!: string

		// The value to compare against.
		value!: number
	})

	_#defs: "/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/tool_calls": close({
		// The comparison operator to apply. Possible values are:
		// LESS, LESS_OR_EQUAL, EQUAL, NOT_EQUAL, GREATER_OR_EQUAL,
		// GREATER.
		comparison_operator!: string

		// The value to compare against.
		value!: number
	})

	_#defs: "/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/total_token_usage": close({
		// The comparison operator to apply. Possible values are:
		// LESS, LESS_OR_EQUAL, EQUAL, NOT_EQUAL, GREATER_OR_EQUAL,
		// GREATER.
		comparison_operator!: string

		// The value to compare against.
		value!: number
	})

	_#defs: "/$defs/cloud_observability/$defs/session_scope/$defs/filter/$defs/user_turns": close({
		// The comparison operator to apply. Possible values are:
		// LESS, LESS_OR_EQUAL, EQUAL, NOT_EQUAL, GREATER_OR_EQUAL,
		// GREATER.
		comparison_operator!: string

		// The value to compare against.
		value!: number
	})

	_#defs: "/$defs/cloud_observability/$defs/session_scope/$defs/inactivity_trigger": close({
		// The amount of time that must pass with no new traces before a
		// session is considered ready for evaluation. Must be a positive
		// duration no greater than 7 days (604800 seconds), e.g. "3600s".
		threshold!: string
	})

	_#defs: "/$defs/cloud_observability/$defs/trace_scope": close({
		filter?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/trace_scope/$defs/filter", [..._#defs."/$defs/cloud_observability/$defs/trace_scope/$defs/filter"]])
	})

	_#defs: "/$defs/cloud_observability/$defs/trace_scope/$defs/filter": close({
		duration?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/trace_scope/$defs/filter/$defs/duration", list.MaxItems(1) & [..._#defs."/$defs/cloud_observability/$defs/trace_scope/$defs/filter/$defs/duration"]])
		total_token_usage?: matchN(1, [_#defs."/$defs/cloud_observability/$defs/trace_scope/$defs/filter/$defs/total_token_usage", list.MaxItems(1) & [..._#defs."/$defs/cloud_observability/$defs/trace_scope/$defs/filter/$defs/total_token_usage"]])
	})

	_#defs: "/$defs/cloud_observability/$defs/trace_scope/$defs/filter/$defs/duration": close({
		// The comparison operator to apply. Possible values are:
		// LESS, LESS_OR_EQUAL, EQUAL, NOT_EQUAL, GREATER_OR_EQUAL,
		// GREATER.
		comparison_operator!: string

		// The value to compare against.
		value!: number
	})

	_#defs: "/$defs/cloud_observability/$defs/trace_scope/$defs/filter/$defs/total_token_usage": close({
		// The comparison operator to apply. Possible values are:
		// LESS, LESS_OR_EQUAL, EQUAL, NOT_EQUAL, GREATER_OR_EQUAL,
		// GREATER.
		comparison_operator!: string

		// The value to compare against.
		value!: number
	})

	_#defs: "/$defs/config/$defs/random_sampling": close({
		// The percentage of traces to sample for evaluation. Must be an
		// integer between 1 and 100.
		percentage!: number
	})
}
