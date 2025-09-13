package res

#google_chronicle_rule_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_chronicle_rule_deployment")
	close({
		// Whether detections resulting from this deployment should be
		// considered
		// alerts.
		alerting?: bool

		// Output only. The timestamp when the rule deployment archive
		// state was last set to true. If the rule deployment's current
		// archive state is not set to true, the field will be empty.
		archive_time?: string

		// The archive state of the rule deployment.
		// Cannot be set to true unless enabled is set to false i.e.
		// archiving requires a two-step process: first, disable the rule
		// by
		// setting 'enabled' to false, then set 'archive' to true.
		// If set to true, alerting will automatically be set to false.
		// If currently set to true, enabled, alerting, and run_frequency
		// cannot be
		// updated.
		archived?: bool

		// Output only. The names of the associated/chained consumer
		// rules. Rules are considered
		// consumers of this rule if their rule text explicitly filters on
		// this rule's ruleid.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
		consumer_rules?: [...string]

		// Whether the rule is currently deployed continuously against
		// incoming data.
		enabled?: bool

		// The execution state of the rule deployment.
		// Possible values:
		// DEFAULT
		// LIMITED
		// PAUSED
		execution_state?: string
		id?:              string

		// The unique identifier for the Chronicle instance, which is the
		// same as the customer ID.
		instance!: string

		// Output only. The timestamp when the rule deployment alert state
		// was lastly changed. This is filled regardless of the current
		// alert state.E.g. if the current alert status is false, this
		// timestamp will be the timestamp when the alert status was
		// changed to false.
		last_alert_status_change_time?: string

		// The location of the resource. This is the geographical region
		// where the Chronicle instance resides, such as "us" or
		// "europe-west2".
		location!: string
		timeouts?: #timeouts

		// The resource name of the rule deployment.
		// Note that RuleDeployment is a child of the overall Rule, not
		// any individual
		// revision, so the resource ID segment for the Rule resource must
		// not
		// reference a specific revision.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}/deployment
		name?: string

		// Output only. The names of the associated/chained producer
		// rules. Rules are considered
		// producers for this rule if this rule explicitly filters on
		// their ruleid.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
		producer_rules?: [...string]
		project?: string

		// The Rule ID of the rule.
		rule!: string

		// The run frequency of the rule deployment.
		// Possible values:
		// LIVE
		// HOURLY
		// DAILY
		run_frequency?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
