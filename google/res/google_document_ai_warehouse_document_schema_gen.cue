package res

import "list"

#google_document_ai_warehouse_document_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_document_ai_warehouse_document_schema")
	close({
		// Name of the schema given by the user.
		display_name!: string

		// Tells whether the document is a folder or a typical document.
		document_is_folder?: bool
		id?:                 string

		// The location of the resource.
		location!: string
		property_definitions!: matchN(1, [#property_definitions, [_, ...] & [...#property_definitions]])

		// The resource name of the document schema.
		name?: string

		// The unique identifier of the project.
		project_number!: string
		timeouts?:       #timeouts
	})

	#property_definitions: close({
		// The display-name for the property, used for front-end.
		display_name?: string
		date_time_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/date_time_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/date_time_type_options"]])

		// Whether the property can be filtered. If this is a
		// sub-property, all the parent properties must be marked
		// filterable.
		is_filterable?: bool

		// Whether the property is user supplied metadata.
		is_metadata?: bool

		// Whether the property can have multiple values.
		is_repeatable?: bool

		// Whether the property is mandatory.
		is_required?: bool
		enum_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/enum_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/enum_type_options"]])

		// Indicates that the property should be included in a global
		// search.
		is_searchable?: bool
		float_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/float_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/float_type_options"]])
		integer_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/integer_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/integer_type_options"]])
		map_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/map_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/map_type_options"]])
		property_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/property_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/property_type_options"]])
		schema_sources?: matchN(1, [_#defs."/$defs/property_definitions/$defs/schema_sources", [..._#defs."/$defs/property_definitions/$defs/schema_sources"]])
		text_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/text_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/text_type_options"]])
		timestamp_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/timestamp_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/timestamp_type_options"]])

		// The name of the metadata property.
		name!: string

		// Stores the retrieval importance. Possible values: ["HIGHEST",
		// "HIGHER", "HIGH", "MEDIUM", "LOW", "LOWEST"]
		retrieval_importance?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/property_definitions/$defs/date_time_type_options": close({})

	_#defs: "/$defs/property_definitions/$defs/enum_type_options": close({
		// List of possible enum values.
		possible_values!: [...string]

		// Make sure the enum property value provided in the document is
		// in the possile value list during document creation. The
		// validation check runs by default.
		validation_check_disabled?: bool
	})

	_#defs: "/$defs/property_definitions/$defs/float_type_options": close({})

	_#defs: "/$defs/property_definitions/$defs/integer_type_options": close({})

	_#defs: "/$defs/property_definitions/$defs/map_type_options": close({})

	_#defs: "/$defs/property_definitions/$defs/property_type_options": close({
		property_definitions!: matchN(1, [_#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions", [_, ...] & [..._#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions"]])
	})

	_#defs: "/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions": close({
		// The display-name for the property, used for front-end.
		display_name?: string

		// Whether the property can be filtered. If this is a
		// sub-property, all the parent properties must be marked
		// filterable.
		is_filterable?: bool

		// Whether the property is user supplied metadata.
		is_metadata?: bool

		// Whether the property can have multiple values.
		is_repeatable?: bool

		// Whether the property is mandatory.
		is_required?: bool

		// Indicates that the property should be included in a global
		// search.
		is_searchable?: bool
		date_time_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/date_time_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/date_time_type_options"]])
		enum_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/enum_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/enum_type_options"]])
		float_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/float_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/float_type_options"]])
		integer_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/integer_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/integer_type_options"]])
		map_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/map_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/map_type_options"]])
		schema_sources?: matchN(1, [_#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/schema_sources", [..._#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/schema_sources"]])
		text_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/text_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/text_type_options"]])
		timestamp_type_options?: matchN(1, [_#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/timestamp_type_options", list.MaxItems(1) & [..._#defs."/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/timestamp_type_options"]])

		// The name of the metadata property.
		name!: string

		// Stores the retrieval importance. Possible values: ["HIGHEST",
		// "HIGHER", "HIGH", "MEDIUM", "LOW", "LOWEST"]
		retrieval_importance?: string
	})

	_#defs: "/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/date_time_type_options": close({})

	_#defs: "/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/enum_type_options": close({
		// List of possible enum values.
		possible_values!: [...string]

		// Make sure the enum property value provided in the document is
		// in the possile value list during document creation. The
		// validation check runs by default.
		validation_check_disabled?: bool
	})

	_#defs: "/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/float_type_options": close({})

	_#defs: "/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/integer_type_options": close({})

	_#defs: "/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/map_type_options": close({})

	_#defs: "/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/schema_sources": close({
		// The schema name in the source.
		name?: string

		// The Doc AI processor type name.
		processor_type?: string
	})

	_#defs: "/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/text_type_options": close({})

	_#defs: "/$defs/property_definitions/$defs/property_type_options/$defs/property_definitions/$defs/timestamp_type_options": close({})

	_#defs: "/$defs/property_definitions/$defs/schema_sources": close({
		// The schema name in the source.
		name?: string

		// The Doc AI processor type name.
		processor_type?: string
	})

	_#defs: "/$defs/property_definitions/$defs/text_type_options": close({})

	_#defs: "/$defs/property_definitions/$defs/timestamp_type_options": close({})
}
