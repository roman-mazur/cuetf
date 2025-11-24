package res

import "list"

#google_bigtable_schema_bundle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigtable_schema_bundle")
	close({
		// If true, allow backwards incompatible changes.
		ignore_warnings?: bool
		id?:              string

		// The name of the instance to create the schema bundle within.
		instance?: string

		// The unique name of the requested schema bundle. Values are of
		// the form
		// 'projects/<project>/instances/<instance>/tables/<table>/schemaBundles/<schemaBundleId>'.
		name?: string
		proto_schema!: matchN(1, [#proto_schema, list.MaxItems(1) & [_, ...] & [...#proto_schema]])
		project?:  string
		timeouts?: #timeouts

		// The unique name of the schema bundle in the form
		// '[_a-zA-Z0-9][-_.a-zA-Z0-9]*'.
		schema_bundle_id!: string

		// The name of the table to create the schema bundle within.
		table?: string
	})

	#proto_schema: close({
		// Base64 encoded content of the file.
		proto_descriptors!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
