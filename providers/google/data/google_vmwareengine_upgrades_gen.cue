package data

#google_vmwareengine_upgrades: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_vmwareengine_upgrades")
	close({
		id?: string

		// The resource name of the specific Upgrade to retrieve. If
		// provided, the 'upgrades' list will contain only this upgrade.
		name?: string

		// The resource name of the private cloud for which upgrades will
		// be listed.
		// Resource names are schemeless URIs that follow the conventions
		// in https://cloud.google.com/apis/design/resource_names.
		// For example:
		// projects/my-project/locations/us-west1-a/privateClouds/my-cloud
		parent!: string

		// A list of VMware Engine upgrades. Contains one element if
		// 'name' is specified in the arguments, otherwise all upgrades
		// for the private cloud.
		upgrades?: [...close({
			component_upgrades?: [...close({
				component_type?: string
				state?:          string
			})]
			description?:        string
			end_time?:           string
			estimated_duration?: string
			name?:               string
			schedule?: [...close({
				constraints?: [...close({
					disallowed_intervals?: [...close({
						end_day?: string
						end_time?: [...close({
							hours?:   number
							minutes?: number
						})]
						start_day?: string
						start_time?: [...close({
							hours?:   number
							minutes?: number
						})]
					})]
					min_hours_day?:  number
					min_hours_week?: number
					reschedule_date_range?: [...close({
						end_time?:   string
						start_time?: string
					})]
				})]
				edit_window?: [...close({
					end_time?:   string
					start_time?: string
				})]
				last_editor?: string
				start_time?:  string
				weekly_windows?: [...close({
					day_of_week?: string
					duration?:    string
					start_time?: [...close({
						hours?:   number
						minutes?: number
					})]
				})]
			})]
			start_version?:  string
			state?:          string
			target_version?: string
			type?:           string
		})]
	})
}
