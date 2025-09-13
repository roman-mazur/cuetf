package res

import "list"

#google_chronicle_data_access_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_chronicle_data_access_scope")
	close({
		// Optional. Whether or not the scope allows all labels, allow_all
		// and
		// allowed_data_access_labels are mutually exclusive and one of
		// them must be
		// present. denied_data_access_labels can still be used along with
		// allow_all.
		// When combined with denied_data_access_labels, access will be
		// granted to all
		// data that doesn't have labels mentioned in
		// denied_data_access_labels. E.g.:
		// A customer with scope with denied labels A and B and allow_all
		// will be able
		// to see all data except data labeled with A and data labeled
		// with B and data
		// with labels A and B.
		allow_all?: bool

		// Output only. The user who created the data access scope.
		author?: string

		// Output only. The time at which the data access scope was
		// created.
		create_time?: string

		// Required. The user provided scope id which will become the last
		// part of the name
		// of the scope resource.
		// Needs to be compliant with https://google.aip.dev/122
		data_access_scope_id!: string

		// Optional. A description of the data access scope for a human
		// reader.
		description?: string

		// Output only. The name to be used for display to customers of
		// the data access scope.
		display_name?: string
		id?:           string

		// The unique identifier for the Chronicle instance, which is the
		// same as the customer ID.
		instance!: string

		// Output only. The user who last updated the data access scope.
		last_editor?: string
		allowed_data_access_labels?: matchN(1, [#allowed_data_access_labels, [...#allowed_data_access_labels]])
		denied_data_access_labels?: matchN(1, [#denied_data_access_labels, [...#denied_data_access_labels]])

		// The location of the resource. This is the geographical region
		// where the Chronicle instance resides, such as "us" or
		// "europe-west2".
		location!: string

		// The unique full name of the data access scope. This unique
		// identifier is generated using values provided for the URL
		// parameters.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{data_access_scope_id}
		name?:     string
		timeouts?: #timeouts
		project?:  string

		// Output only. The time at which the data access scope was last
		// updated.
		update_time?: string
	})

	#allowed_data_access_labels: close({
		// The asset namespace configured in the forwarder
		// of the customer's events.
		asset_namespace?: string

		// The name of the data access label.
		data_access_label?: string

		// Output only. The display name of the label.
		// Data access label and log types's name
		// will match the display name of the resource.
		// The asset namespace will match the namespace itself.
		// The ingestion key value pair will match the key of the tuple.
		display_name?: string
		ingestion_label?: matchN(1, [_#defs."/$defs/allowed_data_access_labels/$defs/ingestion_label", list.MaxItems(1) & [..._#defs."/$defs/allowed_data_access_labels/$defs/ingestion_label"]])

		// The name of the log type.
		log_type?: string
	})

	#denied_data_access_labels: close({
		// The asset namespace configured in the forwarder
		// of the customer's events.
		asset_namespace?: string

		// The name of the data access label.
		data_access_label?: string

		// Output only. The display name of the label.
		// Data access label and log types's name
		// will match the display name of the resource.
		// The asset namespace will match the namespace itself.
		// The ingestion key value pair will match the key of the tuple.
		display_name?: string
		ingestion_label?: matchN(1, [_#defs."/$defs/denied_data_access_labels/$defs/ingestion_label", list.MaxItems(1) & [..._#defs."/$defs/denied_data_access_labels/$defs/ingestion_label"]])

		// The name of the log type.
		log_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/allowed_data_access_labels/$defs/ingestion_label": close({
		// Required. The key of the ingestion label. Always required.
		ingestion_label_key!: string

		// Optional. The value of the ingestion label. Optional. An object
		// with no provided value and some key provided would match
		// against the given key and ANY value.
		ingestion_label_value?: string
	})

	_#defs: "/$defs/denied_data_access_labels/$defs/ingestion_label": close({
		// Required. The key of the ingestion label. Always required.
		ingestion_label_key!: string

		// Optional. The value of the ingestion label. Optional. An object
		// with no provided value and some key provided would match
		// against the given key and ANY value.
		ingestion_label_value?: string
	})
}
