package data

google_storage_control_project_intelligence_finding_revision: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_storage_control_project_intelligence_finding_revision")
	close({
		// The time when the finding revision was created.
		create_time?: string

		// The ID of the intelligence finding.
		finding_id!: string
		id?:         string

		// The location of the intelligence finding. Currently default value is global
		// and users cannot use for input for now.
		location?: string

		// The resource name of the finding revision.
		name?: string

		// The ID of the project in which the resource belongs. If it is not provided,
		// the provider project is used.
		project?: string

		// The ID of the finding revision.
		revision_id!: string

		// The snapshot of the finding at revision creation time.
		snapshot?: [...close({
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
	})
}
