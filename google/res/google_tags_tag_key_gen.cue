package res

#google_tags_tag_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_tags_tag_key")
	close({
		// Regular expression constraint for dynamic tag values, follows
		// RE2 syntax. If present, it implicitly allows dynamic values
		// (constrained by the regex).
		allowed_values_regex?: string

		// Output only. Creation time.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// User-assigned description of the TagKey. Must not exceed 256
		// characters.
		description?: string

		// The generated numeric id for the TagKey.
		name?: string
		id?:   string

		// Output only. Namespaced name of the TagKey.
		namespaced_name?: string

		// Input only. The resource name of the new TagKey's parent. Must
		// be of the form organizations/{org_id} or
		// projects/{project_id_or_number}.
		parent!: string

		// Optional. A purpose cannot be changed once set.
		//
		// A purpose denotes that this Tag is intended for use in policies
		// of a specific policy engine, and will involve that policy
		// engine in management operations involving this Tag. Possible
		// values: ["GCE_FIREWALL", "DATA_GOVERNANCE"]
		purpose?: string

		// Optional. Purpose data cannot be changed once set.
		//
		// Purpose data corresponds to the policy system that the tag is
		// intended for. For example, the GCE_FIREWALL purpose expects
		// data in the following format: 'network =
		// "<project-name>/<vpc-name>"'.
		purpose_data?: [string]: string
		timeouts?: #timeouts

		// Input only. The user friendly name for a TagKey. The short name
		// should be unique for TagKeys within the same tag namespace.
		//
		// The short name can have a maximum length of 256 characters. The
		// permitted character set for the shortName includes all UTF-8
		// encoded Unicode characters except single quotes ('), double
		// quotes ("), backslashes (\\), and forward slashes (/).
		short_name!: string

		// Output only. Update time.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
