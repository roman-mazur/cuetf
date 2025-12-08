package res

import "list"

#google_data_catalog_tag_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_data_catalog_tag_template")
	close({
		// The display name for this template.
		display_name?: string

		// This confirms the deletion of any possible tags using this
		// template. Must be set to true in order to delete the tag
		// template.
		force_delete?: bool

		// The resource name of the tag template in URL format. Example:
		// projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
		name?: string
		id?:   string
		fields!: matchN(1, [#fields, [_, ...] & [...#fields]])
		project?:  string
		timeouts?: #timeouts

		// Template location region.
		region?: string

		// The id of the tag template to create.
		tag_template_id!: string
	})

	#fields: close({
		// A description for this field.
		description?: string

		// The display name for this field.
		display_name?: string

		// Whether this is a required field. Defaults to false.
		is_required?: bool
		field_id!:    string

		// The resource name of the tag template field in URL format.
		// Example:
		// projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}/fields/{field}
		name?: string
		type!: matchN(1, [_#defs."/$defs/fields/$defs/type", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/fields/$defs/type"]])

		// The order of this field with respect to other fields in this
		// tag template.
		// A higher value indicates a more important field. The value can
		// be negative.
		// Multiple fields can have the same order, and field orders
		// within a tag do not have to be sequential.
		order?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/fields/$defs/type": close({
		enum_type?: matchN(1, [_#defs."/$defs/fields/$defs/type/$defs/enum_type", list.MaxItems(1) & [..._#defs."/$defs/fields/$defs/type/$defs/enum_type"]])

		// Represents primitive types - string, bool etc.
		// Exactly one of 'primitive_type' or 'enum_type' must be set
		// Possible values: ["DOUBLE", "STRING", "BOOL", "TIMESTAMP"]
		primitive_type?: string
	})

	_#defs: "/$defs/fields/$defs/type/$defs/enum_type": close({
		allowed_values!: matchN(1, [_#defs."/$defs/fields/$defs/type/$defs/enum_type/$defs/allowed_values", [_, ...] & [..._#defs."/$defs/fields/$defs/type/$defs/enum_type/$defs/allowed_values"]])
	})

	_#defs: "/$defs/fields/$defs/type/$defs/enum_type/$defs/allowed_values": close({
		// The display name of the enum value.
		display_name!: string
	})
}
