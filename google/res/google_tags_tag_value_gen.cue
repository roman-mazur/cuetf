package res

#google_tags_tag_value: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_tags_tag_value")
	close({
		// Output only. Creation time.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// User-assigned description of the TagValue. Must not exceed 256
		// characters.
		description?: string

		// The generated numeric id for the TagValue.
		name?: string
		id?:   string

		// Output only. Namespaced name of the TagValue. Will be in the
		// format {parentNamespace}/{tagKeyShortName}/{shortName}.
		namespaced_name?: string

		// Input only. The resource name of the new TagValue's parent.
		// Must be of the form tagKeys/{tag_key_id}.
		parent!: string

		// Input only. User-assigned short name for TagValue. The short
		// name should be unique for TagValues within the same parent
		// TagKey.
		//
		// The short name can have a maximum length of 256 characters. The
		// permitted character set for the shortName includes all UTF-8
		// encoded Unicode characters except single quotes ('), double
		// quotes ("), backslashes (\\), and forward slashes (/).
		short_name!: string

		// Output only. Update time.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		update_time?: string
		timeouts?:    #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
