package res

import "list"

#google_compute_resize_request: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_resize_request")
	close({
		// The creation timestamp for this resize request in RFC3339 text
		// format.
		creation_timestamp?: string

		// An optional description of this resize-request.
		description?: string
		id?:          string

		// The reference of the instance group manager this ResizeRequest
		// is a part of.
		instance_group_manager!: string

		// The name of this resize request. The name must be 1-63
		// characters long, and comply with RFC1035.
		name!: string

		// The number of instances to be created by this resize request.
		// The group's target size will be increased by this number.
		resize_by!: number

		// Current state of the request.
		state?:   string
		project?: string

		// Status of the request.
		status?: [...close({
			error?: [...close({
				errors?: [...close({
					code?: string
					error_details?: [...close({
						error_info?: [...close({
							domain?: string
							metadatas?: [string]: string
							reason?: string
						})]
						help?: [...close({
							links?: [...close({
								description?: string
								url?:         string
							})]
						})]
						localized_message?: [...close({
							locale?:  string
							message?: string
						})]
						quota_info?: [...close({
							dimensions?: [string]: string
							future_limit?:   number
							limit?:          number
							limit_name?:     string
							metric_name?:    string
							rollout_status?: string
						})]
					})]
					location?: string
					message?:  string
				})]
			})]
			last_attempt?: [...close({
				error?: [...close({
					errors?: [...close({
						code?: string
						error_details?: [...close({
							error_info?: [...close({
								domain?: string
								metadatas?: [string]: string
								reason?: string
							})]
							help?: [...close({
								links?: [...close({
									description?: string
									url?:         string
								})]
							})]
							localized_message?: [...close({
								locale?:  string
								message?: string
							})]
							quota_info?: [...close({
								dimensions?: [string]: string
								future_limit?:   number
								limit?:          number
								limit_name?:     string
								metric_name?:    string
								rollout_status?: string
							})]
						})]
						location?: string
						message?:  string
					})]
				})]
			})]
		})]
		requested_run_duration?: matchN(1, [#requested_run_duration, list.MaxItems(1) & [...#requested_run_duration]])
		timeouts?: #timeouts

		// The reference of the compute zone scoping this request. If it
		// is not provided, the provider zone is used.
		zone?: string
	})

	#requested_run_duration: close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are represented
		// with a 0 seconds field and a positive nanos field. Must be
		// from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 600 to
		// 604800 inclusive. Note: minimum and maximum allowed range for
		// requestedRunDuration is 10 minutes (600 seconds) and 7
		// days(604800 seconds) correspondingly.
		seconds!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
