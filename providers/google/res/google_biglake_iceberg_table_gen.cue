package res

import "list"

#google_biglake_iceberg_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_iceberg_table")
	close({
		partition_spec?: matchN(1, [#partition_spec, list.MaxItems(1) & [...#partition_spec]])
		schema!: matchN(1, [#schema, list.MaxItems(1) & [_, ...] & [...#schema]])
		sort_order?: matchN(1, [#sort_order, list.MaxItems(1) & [...#sort_order]])
		timeouts?: #timeouts

		// The name of the IcebergCatalog.
		catalog!: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

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

	#sort_order: close({
		fields!: matchN(1, [_#defs."/$defs/sort_order/$defs/fields", [_, ...] & [..._#defs."/$defs/sort_order/$defs/fields"]])

		// The unique identifier of the sort order.
		order_id?: number
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

	_#defs: "/$defs/sort_order/$defs/fields": close({
		// The sort direction for the sort field. Possible values: "asc",
		// "desc".
		direction!: string

		// The null ordering for the sort field. Possible values:
		// "nulls-first", "nulls-last".
		null_order!: string

		// The source field ID for the sort field.
		source_id!: number

		// The transform to apply to the source field.
		transform!: string
	})
}
