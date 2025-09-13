package res

#google_compute_project_cloud_armor_tier: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_project_cloud_armor_tier")
	close({
		timeouts?: #timeouts

		// Managed protection tier to be set. Possible values:
		// ["CA_STANDARD", "CA_ENTERPRISE_PAYGO", "CA_ENTERPRISE_ANNUAL"]
		cloud_armor_tier!: string
		id?:               string
		project?:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
