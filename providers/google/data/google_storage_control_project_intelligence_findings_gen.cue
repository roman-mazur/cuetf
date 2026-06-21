package data

#google_storage_control_project_intelligence_findings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_storage_control_project_intelligence_findings")
	close({
		// The filter expression to apply. Supports filtering by type and
		// associated_resources.
		filter?: string

		// The list of intelligence findings.
		findings?: [...close({
			associated_resources?: [...string]
			category?: string
			coldline_and_archival_storage_operations_spike?: [...close({
				percentage_increase?: number
				top_buckets?: [...close({
					bucket?: string
					contribution?: [...close({
						top_prefixes?: [...close({
							percentage_increase?:    number
							prefix?:                 string
							throttled_requests?:     string
							total_egress_bytes?:     string
							total_operations_count?: string
						})]
					})]
					error?: [...close({
						code?:    number
						message?: string
					})]
					percentage_increase?:        number
					throttled_requests?:         string
					total_egress_bytes?:         string
					total_operations_count?:     string
					total_storage_growth_bytes?: string
				})]
				total_operations_count?: string
			})]
			create_time?: string
			cross_region_egress_spike?: [...close({
				percentage_increase?: number
				top_buckets?: [...close({
					bucket?: string
					contribution?: [...close({
						top_prefixes?: [...close({
							percentage_increase?:    number
							prefix?:                 string
							throttled_requests?:     string
							total_egress_bytes?:     string
							total_operations_count?: string
						})]
					})]
					error?: [...close({
						code?:    number
						message?: string
					})]
					percentage_increase?:        number
					throttled_requests?:         string
					total_egress_bytes?:         string
					total_operations_count?:     string
					total_storage_growth_bytes?: string
				})]
				total_egress_bytes?: string
			})]
			description?: string
			name?:        string
			observation_period?: [...close({
				end_time?:   string
				start_time?: string
			})]
			severity?: string
			storage_growth_above_trend?: [...close({
				percentage_increase?: number
				top_buckets?: [...close({
					bucket?: string
					contribution?: [...close({
						top_prefixes?: [...close({
							percentage_increase?:    number
							prefix?:                 string
							throttled_requests?:     string
							total_egress_bytes?:     string
							total_operations_count?: string
						})]
					})]
					error?: [...close({
						code?:    number
						message?: string
					})]
					percentage_increase?:        number
					throttled_requests?:         string
					total_egress_bytes?:         string
					total_operations_count?:     string
					total_storage_growth_bytes?: string
				})]
				total_storage_growth_bytes?: string
			})]
			target_resource?: string
			throttled_requests_spike?: [...close({
				percentage_increase?: number
				throttled_requests?:  string
				top_buckets?: [...close({
					bucket?: string
					contribution?: [...close({
						top_prefixes?: [...close({
							percentage_increase?:    number
							prefix?:                 string
							throttled_requests?:     string
							total_egress_bytes?:     string
							total_operations_count?: string
						})]
					})]
					error?: [...close({
						code?:    number
						message?: string
					})]
					percentage_increase?:        number
					throttled_requests?:         string
					total_egress_bytes?:         string
					total_operations_count?:     string
					total_storage_growth_bytes?: string
				})]
			})]
			type?:        string
			update_time?: string
		})]
		id?: string

		// The location of the intelligence findings. Currently default
		// value is global and users cannot use for input for now.
		location?: string

		// The maximum number of IntelligenceFinding resources to return.
		// The maximum value is 100; values greater than 100 become 100.
		// The default value is 100.
		page_size?: number

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string
	})
}
