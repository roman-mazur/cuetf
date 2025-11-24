package data

#google_monitoring_uptime_check_ips: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_monitoring_uptime_check_ips")
	close({
		id?: string
		uptime_check_ips?: [...close({
			ip_address?: string
			location?:   string
			region?:     string
		})]
	})
}
