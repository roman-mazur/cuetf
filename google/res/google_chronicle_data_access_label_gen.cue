package res

#google_chronicle_data_access_label: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_chronicle_data_access_label")
	close({
		// Output only. The user who created the data access label.
		author?: string

		// Output only. The time at which the data access label was
		// created.
		create_time?: string

		// Required. The ID to use for the data access label, which will
		// become the label's
		// display name and the final component of the label's resource
		// name. The
		// maximum number of characters should be 63. Regex pattern is as
		// per AIP:
		// https://google.aip.dev/122#resource-id-segments
		data_access_label_id!: string

		// Optional. A description of the data access label for a human
		// reader.
		description?: string

		// Output only. The short name displayed for the label as it
		// appears on event data. This is same as data access label id.
		display_name?: string
		id?:           string

		// The unique identifier for the Chronicle instance, which is the
		// same as the customer ID.
		instance!: string

		// Output only. The user who last updated the data access label.
		last_editor?: string

		// The location of the resource. This is the geographical region
		// where the Chronicle instance resides, such as "us" or
		// "europe-west2".
		location!: string
		timeouts?: #timeouts

		// The unique resource name of the data access label. This unique
		// identifier is generated using values provided for the URL
		// parameters.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/dataAccessLabels/{data_access_label_id}
		name?:    string
		project?: string

		// A UDM query over event data.
		udm_query!: string

		// Output only. The time at which the data access label was last
		// updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
