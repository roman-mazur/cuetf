package res

import "list"

#google_biglake_iceberg_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_iceberg_table")
	close({
		partition_spec?: matchN(1, [#partition_spec, list.MaxItems(1) & [...#partition_spec]])
		schema!: matchN(1, [#schema, list.MaxItems(1) & [_, ...] & [...#schema]])
		timeouts?: #timeouts

		// The name of the IcebergCatalog.
		catalog!: string
		id?:      string

		// The location of the table.
		location?: string

		// The name of the table.
		name!: string

		// The parent namespace of the table.
		namespace!: string
		project?:   string

		// User-defined properties for the table.
		properties?: [string]: string
	})

	#partition_spec: close({
		fields!: matchN(1, [_#defs."/$defs/partition_spec/$defs/fields", [_, ...] & [..._#defs."/$defs/partition_spec/$defs/fields"]])

		// The unique identifier of the partition spec.
		spec_id?: number
	})

	#schema: close({
		fields!: matchN(1, [_#defs."/$defs/schema/$defs/fields", [_, ...] & [..._#defs."/$defs/schema/$defs/fields"]])

		// The field IDs that make up the identifier for the table.
		identifier_field_ids?: [...number]

		// The unique identifier of the schema.
		schema_id?: number

		// The type of the schema.
		type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/partition_spec/$defs/fields": close({
		// The unique identifier of the partition field.
		field_id?: number

		// The name of the partition field.
		name!: string

		// The source field ID for the partition field.
		source_id!: number

		// The transform to apply to the source field.
		transform!: string
	})

	_#defs: "/$defs/schema/$defs/fields": close({
		// A description of the field.
		doc?: string

		// The unique identifier of the field.
		id!: number

		// The name of the field.
		name!: string

		// Whether the field is required.
		required!: bool

		// The type of the field.
		type!: string
	})
}
