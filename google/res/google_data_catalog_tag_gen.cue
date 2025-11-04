package res

#google_data_catalog_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_data_catalog_tag")
	close({
		// Resources like Entry can have schemas associated with them.
		// This scope allows users to attach tags to an
		// individual column based on that schema.
		//
		// For attaching a tag to a nested column, use '.' to separate the
		// column names. Example:
		// 'outer_column.inner_column'
		column?: string

		// The resource name of the tag in URL format. Example:
		// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/entries/{entryId}/tags/{tag_id}
		// or
		// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/tags/{tag_id}
		// where tag_id is a system-generated identifier. Note that this
		// Tag may not actually be stored in the location in this name.
		name?: string
		id?:   string

		// The name of the parent this tag is attached to. This can be the
		// name of an entry or an entry group. If an entry group, the tag
		// will be attached to
		// all entries in that group.
		parent?: string

		// The resource name of the tag template that this tag uses.
		// Example:
		// projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
		// This field cannot be modified after creation.
		template!: string
		fields!: matchN(1, [#fields, [_, ...] & [...#fields]])

		// The display name of the tag template.
		template_displayname?: string
		timeouts?:             #timeouts
	})

	#fields: close({
		// Holds the value for a tag field with boolean type.
		bool_value?: bool

		// The display name of this field
		display_name?: string

		// Holds the value for a tag field with double type.
		double_value?: number

		// The display name of the enum value.
		enum_value?: string

		// The order of this field with respect to other fields in this
		// tag. For example, a higher value can indicate
		// a more important field. The value can be negative. Multiple
		// fields can have the same order, and field orders
		// within a tag do not have to be sequential.
		order?:      number
		field_name!: string

		// Holds the value for a tag field with string type.
		string_value?: string

		// Holds the value for a tag field with timestamp type.
		timestamp_value?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
