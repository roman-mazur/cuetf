package res

#cloudflare_r2_bucket_lifecycle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_bucket_lifecycle")
	close({
		// Account ID.
		account_id!: string

		// Name of the bucket.
		bucket_name!: string

		// Jurisdiction of the bucket
		jurisdiction?: string
		rules?: matchN(1, [close({
			// Whether or not this rule is in effect.
			enabled!: bool

			// Transition to abort ongoing multipart uploads.
			abort_multipart_uploads_transition?: close({
				// Condition for lifecycle transitions to apply after an object
				// reaches an age in seconds.
				condition?: close({
					max_age!: number

					// Available values: "Age".
					type!: string
				})
			})

			// Conditions that apply to all transitions of this rule.
			conditions!: close({
				// Transitions will only apply to objects/uploads in the bucket
				// that start with the given prefix, an empty prefix can be
				// provided to scope rule to all objects/uploads.
				prefix!: string
			})

			// Transition to delete objects.
			delete_objects_transition?: close({
				// Condition for lifecycle transitions to apply after an object
				// reaches an age in seconds.
				condition?: close({
					date?:    string
					max_age?: number

					// Available values: "Age", "Date".
					type!: string
				})
			})

			// Unique identifier for this rule.
			id!: string

			// Transitions to change the storage class of objects.
			storage_class_transitions?: matchN(1, [close({
				// Condition for lifecycle transitions to apply after an object
				// reaches an age in seconds.
				condition!: close({
					date?:    string
					max_age?: number

					// Available values: "Age", "Date".
					type!: string
				})

				// Available values: "InfrequentAccess".
				storage_class!: string
			}), [...close({
				// Condition for lifecycle transitions to apply after an object
				// reaches an age in seconds.
				condition!: close({
					date?:    string
					max_age?: number

					// Available values: "Age", "Date".
					type!: string
				})

				// Available values: "InfrequentAccess".
				storage_class!: string
			})]])
		}), [...close({
			// Whether or not this rule is in effect.
			enabled!: bool

			// Transition to abort ongoing multipart uploads.
			abort_multipart_uploads_transition?: close({
				// Condition for lifecycle transitions to apply after an object
				// reaches an age in seconds.
				condition?: close({
					max_age!: number

					// Available values: "Age".
					type!: string
				})
			})

			// Conditions that apply to all transitions of this rule.
			conditions!: close({
				// Transitions will only apply to objects/uploads in the bucket
				// that start with the given prefix, an empty prefix can be
				// provided to scope rule to all objects/uploads.
				prefix!: string
			})

			// Transition to delete objects.
			delete_objects_transition?: close({
				// Condition for lifecycle transitions to apply after an object
				// reaches an age in seconds.
				condition?: close({
					date?:    string
					max_age?: number

					// Available values: "Age", "Date".
					type!: string
				})
			})

			// Unique identifier for this rule.
			id!: string

			// Transitions to change the storage class of objects.
			storage_class_transitions?: matchN(1, [close({
				// Condition for lifecycle transitions to apply after an object
				// reaches an age in seconds.
				condition!: close({
					date?:    string
					max_age?: number

					// Available values: "Age", "Date".
					type!: string
				})

				// Available values: "InfrequentAccess".
				storage_class!: string
			}), [...close({
				// Condition for lifecycle transitions to apply after an object
				// reaches an age in seconds.
				condition!: close({
					date?:    string
					max_age?: number

					// Available values: "Age", "Date".
					type!: string
				})

				// Available values: "InfrequentAccess".
				storage_class!: string
			})]])
		})]])
	})
}
