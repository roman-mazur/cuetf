package data

#cloudflare_managed_transforms: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_managed_transforms")
	close({
		managed_request_headers?: matchN(1, [close({
			conflicts_with?: [...string]
			enabled?:      bool
			has_conflict?: bool
			id?:           string
		}), [...close({
			conflicts_with?: [...string]
			enabled?:      bool
			has_conflict?: bool
			id?:           string
		})]])
		managed_response_headers?: matchN(1, [close({
			conflicts_with?: [...string]
			enabled?:      bool
			has_conflict?: bool
			id?:           string
		}), [...close({
			conflicts_with?: [...string]
			enabled?:      bool
			has_conflict?: bool
			id?:           string
		})]])
		zone_id!: string
	})
}
