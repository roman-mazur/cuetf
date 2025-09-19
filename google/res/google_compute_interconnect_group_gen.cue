package res

import "list"

#google_compute_interconnect_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_interconnect_group")
	close({
		// The status of the group as configured. This has the same
		// structure as the operational field reported by the
		// OperationalStatus
		// method, but does not take into account the operational status
		// of each
		// resource.
		configured?: [...close({
			topology_capability?: [...close({
				intended_capability_blockers?: [...close({
					blocker_type?:       string
					documentation_link?: string
					explanation?:        string
					facilities?: [...string]
					interconnects?: [...string]
					metros?: [...string]
					zones?: [...string]
				})]
				supported_sla?: string
			})]
		})]

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when you create the resource.
		description?: string
		id?:          string

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
		name!: string

		// An analysis of the physical layout of Interconnects in this
		// group. Every Interconnect in the group is shown once in this
		// structure.
		physical_structure?: [...close({
			metros?: [...close({
				facilities?: [...close({
					facility?: string
					zones?: [...close({
						interconnects?: [...string]
						zone?: string
					})]
				})]
				metro?: string
			})]
		})]
		intent?: matchN(1, [#intent, list.MaxItems(1) & [_, ...] & [...#intent]])
		interconnects?: matchN(1, [#interconnects, [...#interconnects]])
		project?:  string
		timeouts?: #timeouts
	})

	#intent: close({
		// The reliability the user intends this group to be capable of,
		// in terms
		// of the Interconnect product SLAs. Possible values:
		// ["PRODUCTION_NON_CRITICAL", "PRODUCTION_CRITICAL", "NO_SLA",
		// "AVAILABILITY_SLA_UNSPECIFIED"]
		topology_capability?: string
	})

	#interconnects: close({
		// The URL of an Interconnect in this group. All Interconnects in
		// the group are unique.
		interconnect?: string
		name!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
