package res

import "list"

#google_bigtable_authorized_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigtable_authorized_view")
	close({
		// A field to make the authorized view protected against data loss
		// i.e. when set to PROTECTED, deleting the authorized view, the
		// table containing the authorized view, and the instance
		// containing the authorized view would be prohibited.
		// If not provided, currently deletion protection will be set to
		// UNPROTECTED as it is the API default value. Note this field
		// configs the deletion protection provided by the API in the
		// backend, and should not be confused with Terraform-side
		// deletion protection.
		deletion_protection?: string

		// The name of the Bigtable instance in which the authorized view
		// belongs.
		instance_name!: string
		id?:            string

		// The name of the authorized view. Must be 1-50 characters and
		// must only contain hyphens, underscores, periods, letters and
		// numbers.
		name!: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string
		subset_view?: matchN(1, [#subset_view, list.MaxItems(1) & [...#subset_view]])

		// The name of the Bigtable table in which the authorized view
		// belongs.
		table_name!: string
		timeouts?:   #timeouts
	})

	#subset_view: close({
		family_subsets?: matchN(1, [_#defs."/$defs/subset_view/$defs/family_subsets", [..._#defs."/$defs/subset_view/$defs/family_subsets"]])

		// Base64-encoded row prefixes to be included in the authorized
		// view. To provide access to all rows, include the empty string
		// as a prefix ("").
		row_prefixes?: [...string]
	})

	#timeouts: close({
		create?: string
		update?: string
	})

	_#defs: "/$defs/subset_view/$defs/family_subsets": close({
		// Name of the column family to be included in the authorized
		// view.
		family_name!: string

		// Base64-encoded prefixes for qualifiers of the column family to
		// be included in the authorized view. Every qualifier starting
		// with one of these prefixes is included in the authorized view.
		// To provide access to all qualifiers, include the empty string
		// as a prefix ("").
		qualifier_prefixes?: [...string]

		// Base64-encoded individual exact column qualifiers of the column
		// family to be included in the authorized view.
		qualifiers?: [...string]
	})
}
