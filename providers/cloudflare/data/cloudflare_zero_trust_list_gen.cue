package data

cloudflare_zero_trust_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_list")
	close({
		account_id?: string
		created_at?: string

		// Provide the list description.
		description?: string
		filter?: close({
			// Sort direction. Applies to the field named in `order_by`; when `order_by`
			// is omitted it applies to the default `created_at` ordering. When
			// `direction` is omitted the default is field-specific: explicitly choosing
			// `created_at` or `updated_at` defaults to descending (newest first); `name`
			// and `item_count` default to ascending; and the default `created_at`
			// ordering used when `order_by` is omitted is ascending (for backwards
			// compatibility).
			// * `asc` — ascending.
			// * `desc` — descending.
			// Available values: "asc", "desc".
			direction?: string

			// Filter the returned lists by one or more `field:value` pairs.
			// Repeat the parameter to apply multiple filters; they are combined with
			// logical AND (a list must satisfy every filter to be returned).
			//
			// Supported fields and their matching behaviour:
			// * `name` — case-insensitive substring match on the list name.
			// * `id` — substring match on the list ID (UUID), with or without dashes.
			// * `type` — exact match on the list type. Supersedes the legacy `type` query
			// parameter when both are supplied. Must be one of the valid type values.
			// * `item_count` — exact integer match on the number of items in the list.
			//
			// Each entry must match one of the per-field patterns below: the field must be
			// one of `name`, `id`, `type`, or `item_count`; `name`/`id` accept any value,
			// `type` is restricted to the valid list type values, and `item_count` must be
			// a non-negative integer.
			filter?: [...string]

			// Field to sort the returned lists by. When omitted, results are ordered by
			// `created_at` in ascending order (i.e. creation order) for backwards
			// compatibility. Supported values:
			// * `name` — sort alphabetically by list name.
			// * `created_at` — sort by creation time; defaults to descending unless `direction` is set.
			// * `updated_at` — sort by last-modified time; defaults to descending unless `direction` is set.
			// * `item_count` — sort by number of items in the list.
			// Available values: "name", "created_at", "updated_at", "item_count".
			order_by?: string

			// Case-insensitive substring match on the list name or description. When
			// combined with `filter`, both must match (logical AND).
			search?: string

			// Specify the list type.
			// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP", "CATEGORY",
			// "LOCATION", "DEVICE", "AAGUID".
			type?: string
		})

		// Identify the API resource with a UUID.
		id?: string

		// Provide the list items.
		items?: matchN(1, [close({
			created_at?: string

			// Provide the list item description (optional).
			description?: string

			// Specify the item value.
			value?: string
		}), [...close({
			created_at?: string

			// Provide the list item description (optional).
			description?: string

			// Specify the item value.
			value?: string
		})]])

		// Indicate the number of items in the list.
		list_count?: number

		// Identify the API resource with a UUID.
		list_id?: string

		// Specify the list name.
		name?: string

		// Specify the list type.
		// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP", "CATEGORY",
		// "LOCATION", "DEVICE", "AAGUID".
		type?:       string
		updated_at?: string
	})
}
