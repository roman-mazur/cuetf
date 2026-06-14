package data

#scaleway_cockpit_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_cockpit_config")
	close({
		// Retention limits and default for custom logs data sources.
		custom_logs_retention?: [...close({
			default_days?: number
			max_days?:     number
			min_days?:     number
		})]

		// Retention limits and default for custom metrics data sources.
		custom_metrics_retention?: [...close({
			default_days?: number
			max_days?:     number
			min_days?:     number
		})]

		// Retention limits and default for custom traces data sources.
		custom_traces_retention?: [...close({
			default_days?: number
			max_days?:     number
			min_days?:     number
		})]
		id?: string

		// Retention limits and default for Scaleway product logs data
		// sources.
		product_logs_retention?: [...close({
			default_days?: number
			max_days?:     number
			min_days?:     number
		})]

		// Retention limits and default for Scaleway product metrics data
		// sources.
		product_metrics_retention?: [...close({
			default_days?: number
			max_days?:     number
			min_days?:     number
		})]

		// The region you want to attach the resource to
		region?: string
	})
}
