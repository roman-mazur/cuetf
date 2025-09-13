package res

import "list"

#google_clouddeploy_automation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_clouddeploy_automation")
	close({
		// Optional. User annotations. These attributes can only be set
		// and used by the user, and not by Cloud Deploy. Annotations
		// must meet the following constraints: * Annotations are
		// key/value pairs. * Valid annotation keys have two segments: an
		// optional prefix and name, separated by a slash ('/'). * The
		// name segment is required and must be 63 characters or less,
		// beginning and ending with an alphanumeric character
		// ('[a-z0-9A-Z]') with dashes ('-'), underscores ('_'), dots
		// ('.'), and alphanumerics between. * The prefix is optional. If
		// specified, the prefix must be a DNS subdomain: a series of DNS
		// labels separated by dots('.'), not longer than 253 characters
		// in total, followed by a slash ('/'). See
		// https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set
		// for more details.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. Time at which the automation was created.
		create_time?: string

		// The delivery_pipeline for the resource
		delivery_pipeline!: string

		// Optional. Description of the 'Automation'. Max length is 255
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

		// Optional. The weak etag of the 'Automation' resource. This
		// checksum is computed by the server based on the value of other
		// fields, and may be sent on update and delete requests to
		// ensure the client has an up-to-date value before proceeding.
		etag?: string
		id?:   string

		// Optional. Labels are attributes that can be set and used by
		// both the user and by Cloud Deploy. Labels must meet the
		// following constraints: * Keys and values can contain only
		// lowercase letters, numeric characters, underscores, and
		// dashes. * All characters must use UTF-8 encoding, and
		// international characters are allowed. * Keys must start with a
		// lowercase letter or international character. * Each resource
		// is limited to a maximum of 64 labels. Both keys and values are
		// additionally constrained to be <= 63 characters.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the resource
		location!: string

		// Name of the 'Automation'.
		name!: string
		rules?: matchN(1, [#rules, [_, ...] & [...#rules]])
		selector?: matchN(1, [#selector, list.MaxItems(1) & [_, ...] & [...#selector]])
		timeouts?: #timeouts
		project?:  string

		// Required. Email address of the user-managed IAM service account
		// that creates Cloud Deploy release and rollout resources.
		service_account!: string

		// Optional. When Suspended, automation is deactivated from
		// execution.
		suspended?: bool

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. Unique identifier of the 'Automation'.
		uid?: string

		// Output only. Time at which the automation was updated.
		update_time?: string
	})

	#rules: close({
		advance_rollout_rule?: matchN(1, [_#defs."/$defs/rules/$defs/advance_rollout_rule", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/advance_rollout_rule"]])
		promote_release_rule?: matchN(1, [_#defs."/$defs/rules/$defs/promote_release_rule", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/promote_release_rule"]])
		repair_rollout_rule?: matchN(1, [_#defs."/$defs/rules/$defs/repair_rollout_rule", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/repair_rollout_rule"]])
		timed_promote_release_rule?: matchN(1, [_#defs."/$defs/rules/$defs/timed_promote_release_rule", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/timed_promote_release_rule"]])
	})

	#selector: close({
		targets?: matchN(1, [_#defs."/$defs/selector/$defs/targets", [_, ...] & [..._#defs."/$defs/selector/$defs/targets"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rules/$defs/advance_rollout_rule": close({
		// Required. ID of the rule. This id must be unique in the
		// 'Automation' resource to which this rule belongs. The format
		// is 'a-z{0,62}'.
		id!: string

		// Optional. Proceeds only after phase name matched any one in the
		// list. This value must consist of lower-case letters, numbers,
		// and hyphens, start with a letter and end with a letter or a
		// number, and have a max length of 63 characters. In other
		// words, it must match the following regex:
		// '^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$'.
		source_phases?: [...string]

		// Optional. How long to wait after a rollout is finished.
		wait?: string
	})

	_#defs: "/$defs/rules/$defs/promote_release_rule": close({
		// Optional. The starting phase of the rollout created by this
		// operation. Default to the first phase.
		destination_phase?: string

		// Optional. The ID of the stage in the pipeline to which this
		// 'Release' is deploying. If unspecified, default it to the next
		// stage in the promotion flow. The value of this field could be
		// one of the following: * The last segment of a target name. It
		// only needs the ID to determine if the target is one of the
		// stages in the promotion sequence defined in the pipeline. *
		// "@next", the next target in the promotion sequence.
		destination_target_id?: string

		// Required. ID of the rule. This id must be unique in the
		// 'Automation' resource to which this rule belongs. The format
		// is 'a-z{0,62}'.
		id!: string

		// Optional. How long the release need to be paused until being
		// promoted to the next target.
		wait?: string
	})

	_#defs: "/$defs/rules/$defs/repair_rollout_rule": close({
		// Required. ID of the rule. This id must be unique in the
		// 'Automation' resource to which this rule belongs. The format
		// is 'a-z{0,62}'.
		id!: string
		repair_phases?: matchN(1, [_#defs."/$defs/rules/$defs/repair_rollout_rule/$defs/repair_phases", [..._#defs."/$defs/rules/$defs/repair_rollout_rule/$defs/repair_phases"]])

		// Optional. Jobs to repair. Proceeds only after job name matched
		// any one in the list, or for all jobs if unspecified or empty.
		// The phase that includes the job must match the phase ID
		// specified in sourcePhase. This value must consist of
		// lower-case letters, numbers, and hyphens, start with a letter
		// and end with a letter or a number, and have a max length of 63
		// characters. In other words, it must match the following regex:
		// ^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$.
		jobs?: [...string]

		// Optional. Phases within which jobs are subject to automatic
		// repair actions on failure. Proceeds only after phase name
		// matched any one in the list, or for all phases if unspecified.
		// This value must consist of lower-case letters, numbers, and
		// hyphens, start with a letter and end with a letter or a
		// number, and have a max length of 63 characters. In other
		// words, it must match the following regex:
		// ^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$.
		phases?: [...string]
	})

	_#defs: "/$defs/rules/$defs/repair_rollout_rule/$defs/repair_phases": close({
		retry?: matchN(1, [_#defs."/$defs/rules/$defs/repair_rollout_rule/$defs/repair_phases/$defs/retry", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/repair_rollout_rule/$defs/repair_phases/$defs/retry"]])
		rollback?: matchN(1, [_#defs."/$defs/rules/$defs/repair_rollout_rule/$defs/repair_phases/$defs/rollback", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/repair_rollout_rule/$defs/repair_phases/$defs/rollback"]])
	})

	_#defs: "/$defs/rules/$defs/repair_rollout_rule/$defs/repair_phases/$defs/retry": close({
		// Required. Total number of retries. Retry is skipped if set to
		// 0; The minimum value is 1, and the maximum value is 10.
		attempts!: string

		// Optional. The pattern of how wait time will be increased.
		// Default is linear. Backoff mode will be ignored if wait is 0.
		// Possible values: ["BACKOFF_MODE_UNSPECIFIED",
		// "BACKOFF_MODE_LINEAR", "BACKOFF_MODE_EXPONENTIAL"]
		backoff_mode?: string

		// Optional. How long to wait for the first retry. Default is 0,
		// and the maximum value is 14d. A duration in seconds with up to
		// nine fractional digits, ending with 's'. Example: '3.5s'.
		wait?: string
	})

	_#defs: "/$defs/rules/$defs/repair_rollout_rule/$defs/repair_phases/$defs/rollback": close({
		// Optional. The starting phase ID for the Rollout. If
		// unspecified, the Rollout will start in the stable phase.
		destination_phase?: string

		// Optional. If pending rollout exists on the target, the rollback
		// operation will be aborted.
		disable_rollback_if_rollout_pending?: bool
	})

	_#defs: "/$defs/rules/$defs/timed_promote_release_rule": close({
		// Optional. The starting phase of the rollout created by this
		// rule. Default to the first phase.
		destination_phase?: string

		// Optional. The ID of the stage in the pipeline to which this
		// Release is deploying. If unspecified, default it to the next
		// stage in the promotion flow. The value of this field could be
		// one of the following:
		// - The last segment of a target name
		// - "@next", the next target in the promotion sequence"
		destination_target_id?: string

		// Required. ID of the rule. This id must be unique in the
		// 'Automation' resource to which this rule belongs. The format
		// is 'a-z{0,62}'.
		id!: string

		// Required. Schedule in crontab format. e.g. '0 9 * * 1' for
		// every Monday at 9am.
		schedule!: string

		// Required. The time zone in IANA format IANA Time Zone Database
		// (e.g. America/New_York).
		time_zone!: string
	})

	_#defs: "/$defs/selector/$defs/targets": close({
		// ID of the 'Target'. The value of this field could be one of the
		// following: * The last segment of a target name. It only needs
		// the ID to determine which target is being referred to * "*",
		// all targets in a location.
		id?: string

		// Target labels.
		labels?: [string]: string
	})
}
