package res

import "list"

#google_compute_interconnect_attachment_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_interconnect_attachment_group")
	close({
		// The redundancy this group is configured to support. The way a
		// user queries what SLA their Attachment gets is by looking at
		// this field of
		// the Attachment's AttachmentGroup.
		configured?: [...close({
			availability_sla?: [...close({
				effective_sla?: string
				intended_sla_blockers?: [...close({
					attachments?: [...string]
					blocker_type?:       string
					documentation_link?: string
					explanation?:        string
					metros?: [...string]
					regions?: [...string]
					zones?: [...string]
				})]
			})]
		})]

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when you create the resource.
		description?: string
		id?:          string
		attachments?: matchN(1, [#attachments, [...#attachments]])

		// The URL of an InterconnectGroup that groups these Attachments'
		// Interconnects. Customers do not need to set this unless
		// directed by
		// Google Support.
		interconnect_group?: string
		intent!: matchN(1, [#intent, list.MaxItems(1) & [_, ...] & [...#intent]])
		timeouts?: #timeouts

		// An analysis of the logical layout of Attachments in this
		// group. Every Attachment in the group is shown once in this
		// structure.
		logical_structure?: [...close({
			regions?: [...close({
				metros?: [...close({
					facilities?: [...close({
						facility?: string
						zones?: [...close({
							attachment?: [...string]
							zone?: string
						})]
					})]
					metro?: string
				})]
				region?: string
			})]
		})]

		// Name of the resource. Provided by the client when the resource
		// is created. The name must be
		// 1-63 characters long, and comply with RFC1035. Specifically,
		// the name must be 1-63 characters
		// long and match the regular expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?' which means the first
		// character must be a lowercase letter, and all following
		// characters must be a dash,
		// lowercase letter, or digit, except the last character, which
		// cannot be a dash.
		name!:    string
		project?: string
	})

	#attachments: close({
		attachment?: string
		name!:       string
	})

	#intent: close({
		// Which SLA the user intends this group to support. Possible
		// values: ["PRODUCTION_NON_CRITICAL", "PRODUCTION_CRITICAL",
		// "NO_SLA", "AVAILABILITY_SLA_UNSPECIFIED"]
		availability_sla?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
