package res

#google_contact_center_insights_auto_labeling_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_contact_center_insights_auto_labeling_rule")
	close({
		conditions?: matchN(1, [#conditions, [...#conditions]])
		timeouts?: #timeouts

		// Whether the rule is active.
		active?: bool

		// A unique ID for the new AutoLabelingRule. This ID will become
		// the final
		// component of the AutoLabelingRule's resource name. If no ID is
		// specified,
		// a server-generated ID will be used.
		//
		// This value should be 4-64 characters and must match the regular
		// expression '^[A-Za-z0-9]{4,64}$'.
		auto_labeling_rule_id?: string

		// The time at which this rule was created.
		create_time?: string

		// The description of the rule.
		description?: string

		// Display Name of the auto labeling rule.
		display_name?: string
		id?:           string

		// The label key.
		label_key?: string

		// The type of the label key. Possible values:
		// ["LABEL_KEY_TYPE_UNSPECIFIED", "LABEL_KEY_TYPE_CUSTOM"]
		label_key_type?: string

		// Location of the resource.
		location!: string

		// Identifier. The resource name of the auto labeling rule.
		// Format:
		// projects/{project}/locations/{location}/autoLabelingRules/{auto_labeling_rule}
		name?:    string
		project?: string

		// The most recent time at which this rule was updated.
		update_time?: string
	})

	#conditions: close({
		// A optional CEL expression to be evaluated as a boolean value.
		// Once evaluated as true, then we will proceed with the value
		// evaluation.
		// An empty condition will be auto evaluated as true.
		condition?: string

		// CEL expression to be evaluated as the value.
		value?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
