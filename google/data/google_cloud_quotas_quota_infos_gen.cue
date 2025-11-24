package data

#google_cloud_quotas_quota_infos: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_cloud_quotas_quota_infos")
	close({
		id?:     string
		parent!: string
		quota_infos?: [...close({
			container_type?: string
			dimensions?: [...string]
			dimensions_infos?: [...close({
				applicable_locations?: [...string]
				details?: [...close({
					value?: string
				})]
				dimensions?: [string]: string
			})]
			is_concurrent?:       bool
			is_fixed?:            bool
			is_precise?:          bool
			metric?:              string
			metric_display_name?: string
			metric_unit?:         string
			name?:                string
			quota_display_name?:  string
			quota_id?:            string
			quota_increase_eligibility?: [...close({
				ineligibility_reason?: string
				is_eligible?:          bool
			})]
			refresh_interval?:          string
			service?:                   string
			service_request_quota_uri?: string
		})]
		service!: string
	})
}
