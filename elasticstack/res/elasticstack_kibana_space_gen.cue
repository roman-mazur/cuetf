package res

#elasticstack_kibana_space: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_space")
	close({
		// The hexadecimal color code used in the space avatar. By
		// default, the color is automatically generated from the space
		// name.
		color?: string

		// The description for the space.
		description?: string

		// The list of disabled features for the space. To get a list of
		// available feature IDs, use the Features API
		// (https://www.elastic.co/guide/en/kibana/master/features-api-get.html).
		disabled_features?: [...string]

		// Internal identifier of the resource.
		id?: string

		// The data-URL encoded image to display in the space avatar.
		image_url?: string

		// The initials shown in the space avatar. By default, the
		// initials are automatically generated from the space name.
		// Initials must be 1 or 2 characters.
		initials?: string

		// The display name for the space.
		name!: string

		// The solution view for the space. Valid options are `security`,
		// `oblt`, `es`, or `classic`.
		solution?: string

		// The space ID that is part of the Kibana URL when inside the
		// space.
		space_id!: string
	})
}
