package data

google_storage_control_project_intelligence_finding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_storage_control_project_intelligence_finding")
	close({
		// Google Cloud resource names that are relevant to the IntelligenceFinding.
		// This list also includes the targetResource.
		associated_resources?: [...string]

		// The category of the finding.
		category?: string

		// A finding about a spike in Class A or Class B operations on Coldline or
		// Archive Cloud Storage objects.
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

		// The time when the finding was created.
		create_time?: string

		// A finding about a spike in cross-region egress from Cloud Storage.
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

		// A short description of the finding.
		description?: string

		// The ID of the intelligence finding.
		finding_id!: string
		id?:         string

		// The location of the intelligence finding. Currently default value is global
		// and users cannot use for input for now.
		location?: string

		// The resource name of the finding.
		name?: string

		// The time interval from which the underlying data generated this IntelligenceFinding was observed.
		observation_period?: [...close({
			end_time?:   string
			start_time?: string
		})]

		// The ID of the project in which the resource belongs. If it is not provided,
		// the provider project is used.
		project?: string

		// The severity of the finding.
		severity?: string

		// A finding about a spike in storage growth (bytes or object count) that is
		// outside the normal historical trend.
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

		// The fully qualified resource name of the resource that this IntelligenceFinding applies to.
		target_resource?: string

		// A finding about a spike in throttled requests (429 errors) within a project.
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

		// The type of this finding.
		type?: string

		// The time when the finding was last updated.
		update_time?: string
	})
}
