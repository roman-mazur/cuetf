package res

import "list"

#google_chronicle_retrohunt: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_retrohunt")
	close({
		// Represents a time interval, encoded as a Timestamp start
		// (inclusive) and a
		// Timestamp end (exclusive).
		//
		// The start must be less than or equal to the end.
		// When the start equals the end, the interval is empty (matches
		// no time).
		// When both start and end are unspecified, the interval matches
		// any time.
		execution_interval?: [...close({
			end_time?:   string
			start_time?: string
		})]

		// The unique identifier for the Chronicle instance, which is the
		// same as the customer ID.
		instance!: string
		id?:       string

		// The location of the resource. This is the geographical region
		// where the Chronicle instance resides, such as "us" or
		// "europe-west2".
		location!: string

		// The resource name of the retrohunt.
		// Retrohunt is the child of a rule revision. {rule} in the format
		// below is
		// structured as {rule_id@revision_id}.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}/retrohunts/{retrohunt}
		name?: string

		// Output only. Percent progress of the retrohunt towards
		// completion, from 0.00 to 100.00.
		progress_percentage?: number
		project?:             string

		// The retrohunt ID of the Retrohunt. A retrohunt is an execution
		// of a Rule over a time range in the past.
		retrohunt?: string
		process_interval!: matchN(1, [#process_interval, list.MaxItems(1) & [_, ...] & [...#process_interval]])
		timeouts?: #timeouts

		// The Rule ID of the rule.
		rule!: string

		// Output only. The state of the retrohunt.
		// Possible values:
		// RUNNING
		// DONE
		// CANCELLED
		// FAILED
		state?: string
	})

	#process_interval: close({
		// Exclusive end of the interval.
		end_time!: string

		// Inclusive start of the interval.
		start_time!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
