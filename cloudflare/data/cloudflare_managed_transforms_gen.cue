package data

#cloudflare_managed_transforms: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_managed_transforms")
	close({
		// The unique ID of the zone.
		id?: string

		// The list of Managed Request Transforms.
		managed_request_headers?: matchN(1, [close({
			// Whether the Managed Transform is enabled.
			enabled?: bool

			// The human-readable identifier of the Managed Transform.
			id?: string
		}), [...close({
			// Whether the Managed Transform is enabled.
			enabled?: bool

			// The human-readable identifier of the Managed Transform.
			id?: string
		})]])

		// The unique ID of the zone.
		zone_id!: string

		// The list of Managed Response Transforms.
		managed_response_headers?: matchN(1, [close({
			// Whether the Managed Transform is enabled.
			enabled?: bool

			// The human-readable identifier of the Managed Transform.
			id?: string
		}), [...close({
			// Whether the Managed Transform is enabled.
			enabled?: bool

			// The human-readable identifier of the Managed Transform.
			id?: string
		})]])
	})
}
