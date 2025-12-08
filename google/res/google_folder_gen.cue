package res

#google_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_folder")
	close({
		// A list of capabilities that are configured for this folder.
		configured_capabilities?: [...string]

		// Timestamp when the Folder was created. Assigned by the server.
		// A timestamp in RFC3339 UTC "Zulu" format, accurate to
		// nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// When the field is set to true or unset in Terraform state, a
		// terraform apply or terraform destroy that would delete the
		// instance will fail. When the field is set to false, deleting
		// the instance is allowed.
		deletion_protection?: bool

		// The folder's display name. A folder's display name must be
		// unique amongst its siblings, e.g. no two folders with the same
		// parent can share the same display name. The display name must
		// start and end with a letter or digit, may contain letters,
		// digits, spaces, hyphens and underscores and can be no longer
		// than 30 characters.
		display_name!: string

		// The folder id from the name "folders/{folder_id}"
		folder_id?: string

		// The lifecycle state of the folder such as ACTIVE or
		// DELETE_REQUESTED.
		lifecycle_state?: string

		// The Management Project associated with the folder's configured
		// capabilities.
		management_project?: string
		id?:                 string

		// The resource name of the Folder. Its format is
		// folders/{folder_id}.
		name?:     string
		timeouts?: #timeouts

		// The resource name of the parent Folder or Organization. Must be
		// of the form folders/{folder_id} or organizations/{org_id}.
		parent!: string

		// A map of resource manager tags. Resource manager tag keys and
		// values have the same definition as resource manager tags. Keys
		// must be in the format tagKeys/{tag_key_id}, and values are in
		// the format tagValues/456. The field is ignored when empty.
		// This field is only set at create time and modifying this field
		// after creation will trigger recreation. To apply tags to an
		// existing resource, see the google_tags_tag_value resource.
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
