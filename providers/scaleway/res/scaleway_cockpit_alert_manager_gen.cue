package res

#scaleway_cockpit_alert_manager: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_cockpit_alert_manager")
	close({
		contact_points?: matchN(1, [#contact_points, [...#contact_points]])

		// Alert manager URL
		alert_manager_url?: string
		id?:                string

		// List of preconfigured alert rule IDs to enable explicitly. Use
		// the scaleway_cockpit_preconfigured_alert data source to list
		// available alerts.
		preconfigured_alert_ids?: [...string]

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string
	})

	#contact_points: close({
		// Email addresses for the alert receivers
		email?: string
	})
}
