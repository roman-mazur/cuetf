package res

import "list"

#google_container_analysis_note: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_container_analysis_note")
	close({
		// The time this note was created.
		create_time?: string

		// Time of expiration for this note. Leave empty if note does not
		// expire.
		expiration_time?: string

		// The type of analysis this note describes
		kind?: string
		id?:   string

		// A detailed description of the note
		long_description?: string

		// The name of the note.
		name!:    string
		project?: string

		// Names of other notes related to this note.
		related_note_names?: [...string]
		attestation_authority?: matchN(1, [#attestation_authority, list.MaxItems(1) & [_, ...] & [...#attestation_authority]])
		related_url?: matchN(1, [#related_url, [...#related_url]])
		timeouts?: #timeouts

		// A one sentence description of the note.
		short_description?: string

		// The time this note was last updated.
		update_time?: string
	})

	#attestation_authority: close({
		hint?: matchN(1, [_#defs."/$defs/attestation_authority/$defs/hint", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/attestation_authority/$defs/hint"]])
	})

	#related_url: close({
		// Label to describe usage of the URL
		label?: string

		// Specific URL associated with the resource.
		url!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/attestation_authority/$defs/hint": close({
		// The human readable name of this Attestation Authority, for
		// example "qa".
		human_readable_name!: string
	})
}
