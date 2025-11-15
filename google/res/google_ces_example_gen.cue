package res

import "list"

#google_ces_example: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_ces_example")
	close({
		// Resource ID segment making up resource 'name', defining the app
		// the example belongs to. It identifies the resource within its
		// parent collection as described in https://google.aip.dev/122.
		app!: string

		// Timestamp when the example was created.
		create_time?: string

		// Human-readable description of the example.
		description?: string

		// Display name of the example.
		display_name!: string

		// Etag used to ensure the object hasn't changed during a
		// read-modify-write
		// operation. If the etag is empty, the update will overwrite any
		// concurrent
		// changes.
		etag?: string

		// The ID to use for the example, which will become the final
		// component of
		// the example's resource name. In Terraform, this field is
		// required.
		example_id!: string
		id?:         string

		// The example may become invalid if referencing resources are
		// deleted.
		// Invalid examples will not be used as few-shot examples.
		invalid?: bool
		messages?: matchN(1, [#messages, [...#messages]])

		// Resource ID segment making up resource 'name', defining what
		// region the parent app is in. It identifies the resource within
		// its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The unique identifier of the example.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/examples/{example}'
		name?:     string
		timeouts?: #timeouts
		project?:  string

		// Timestamp when the example was last updated.
		update_time?: string
	})

	#messages: close({
		chunks?: matchN(1, [_#defs."/$defs/messages/$defs/chunks", [..._#defs."/$defs/messages/$defs/chunks"]])

		// The role within the conversation, e.g., user, agent.
		role?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/messages/$defs/chunks": close({
		image?: matchN(1, [_#defs."/$defs/messages/$defs/chunks/$defs/image", list.MaxItems(1) & [..._#defs."/$defs/messages/$defs/chunks/$defs/image"]])

		// Text data.
		text?: string

		// A struct represents variables that were updated in the
		// conversation,
		// keyed by variable names.
		updated_variables?: string
	})

	_#defs: "/$defs/messages/$defs/chunks/$defs/image": close({
		// Raw bytes of the image.
		data!: string

		// The IANA standard MIME type of the source data.
		// Supported image types includes:
		// * image/png
		// * image/jpeg
		// * image/webp
		mime_type!: string
	})
}
