package res

import "list"

#google_bigtable_schema_bundle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigtable_schema_bundle")
	close({
		// etag is used for optimistic concurrency control as a way to
		// help prevent simultaneous
		// updates of a schema bundle from overwriting each other. This
		// may be sent on update and delete
		// requests to ensure the client has an update-to-date value
		// before proceeding. The server returns
		// an ABORTED error on a mismatched etag.
		etag?: string

		// If true, allow backwards incompatible changes.
		ignore_warnings?: bool
		id?:              string

		// The name of the instance to create the schema bundle within.
		instance?: string

		// The unique name of the requested schema bundle. Values are of
		// the form
		// 'projects/<project>/instances/<instance>/tables/<table>/schemaBundles/<schemaBundleId>'.
		name?:    string
		project?: string
		proto_schema!: matchN(1, [#proto_schema, list.MaxItems(1) & [_, ...] & [...#proto_schema]])

		// The unique name of the schema bundle in the form
		// '[_a-zA-Z0-9][-_.a-zA-Z0-9]*'.
		schema_bundle_id!: string

		// The name of the table to create the schema bundle within.
		table?:    string
		timeouts?: #timeouts
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
