package data

#scaleway_cockpit_preconfigured_alert: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_cockpit_preconfigured_alert")
	close({
		// List of preconfigured alerts
		alerts?: [...close({
			annotations?: [string]: string
			data_source_id?:        string
			display_description?:   string
			display_name?:          string
			duration?:              string
			name?:                  string
			preconfigured_rule_id?: string
			product_family?:        string
			product_name?:          string
			rule?:                  string
			rule_status?:           string
			state?:                 string
		})]

		// Filter alerts by data source ID
		data_source_id?: string
		id?:             string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// Filter alerts by rule status (enabled, disabled)
		rule_status?: string
	})
}
