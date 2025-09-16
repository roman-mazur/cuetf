package data

#cloudflare_r2_bucket_lock: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_bucket_lock")
	close({
		// Account ID.
		account_id!: string

		// Name of the bucket.
		bucket_name!: string
		rules?: matchN(1, [close({
			// Condition to apply a lock rule to an object for how long in
			// seconds.
			condition?: close({
				date?:            string
				max_age_seconds?: number

				// Available values: "Age", "Date", "Indefinite".
				type?: string
			})

			// Whether or not this rule is in effect.
			enabled?: bool

			// Unique identifier for this rule.
			id?: string

			// Rule will only apply to objects/uploads in the bucket that
			// start with the given prefix, an empty prefix can be provided
			// to scope rule to all objects/uploads.
			prefix?: string
		}), [...close({
			// Condition to apply a lock rule to an object for how long in
			// seconds.
			condition?: close({
				date?:            string
				max_age_seconds?: number

				// Available values: "Age", "Date", "Indefinite".
				type?: string
			})

			// Whether or not this rule is in effect.
			enabled?: bool

			// Unique identifier for this rule.
			id?: string

			// Rule will only apply to objects/uploads in the bucket that
			// start with the given prefix, an empty prefix can be provided
			// to scope rule to all objects/uploads.
			prefix?: string
		})]])
	})
}
