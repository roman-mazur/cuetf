package data

#cloudflare_load_balancer_monitor_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_load_balancer_monitor_groups")
	close({
		// Identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The timestamp of when the monitor group was created
			created_on?: string

			// A short description of the monitor group
			description?: string

			// The ID of the Monitor Group to use for checking the health of
			// origins within this pool.
			id?: string

			// The timestamp of when the monitor group was last updated
			modified_on?: string

			// List of monitors in this group
			members?: matchN(1, [close({
				// The timestamp of when the monitor was added to the group
				created_at?: string

				// Whether this monitor is enabled in the group
				enabled?: bool

				// The ID of the Monitor to use for checking the health of origins
				// within this pool.
				monitor_id?: string

				// Whether this monitor is used for monitoring only (does not
				// affect pool health)
				monitoring_only?: bool

				// Whether this monitor must be healthy for the pool to be
				// considered healthy
				must_be_healthy?: bool

				// The timestamp of when the monitor group member was last updated
				updated_at?: string
			}), [...close({
				// The timestamp of when the monitor was added to the group
				created_at?: string

				// Whether this monitor is enabled in the group
				enabled?: bool

				// The ID of the Monitor to use for checking the health of origins
				// within this pool.
				monitor_id?: string

				// Whether this monitor is used for monitoring only (does not
				// affect pool health)
				monitoring_only?: bool

				// Whether this monitor must be healthy for the pool to be
				// considered healthy
				must_be_healthy?: bool

				// The timestamp of when the monitor group member was last updated
				updated_at?: string
			})]])
		}), [...close({
			// The timestamp of when the monitor group was created
			created_on?: string

			// A short description of the monitor group
			description?: string

			// The ID of the Monitor Group to use for checking the health of
			// origins within this pool.
			id?: string

			// The timestamp of when the monitor group was last updated
			modified_on?: string

			// List of monitors in this group
			members?: matchN(1, [close({
				// The timestamp of when the monitor was added to the group
				created_at?: string

				// Whether this monitor is enabled in the group
				enabled?: bool

				// The ID of the Monitor to use for checking the health of origins
				// within this pool.
				monitor_id?: string

				// Whether this monitor is used for monitoring only (does not
				// affect pool health)
				monitoring_only?: bool

				// Whether this monitor must be healthy for the pool to be
				// considered healthy
				must_be_healthy?: bool

				// The timestamp of when the monitor group member was last updated
				updated_at?: string
			}), [...close({
				// The timestamp of when the monitor was added to the group
				created_at?: string

				// Whether this monitor is enabled in the group
				enabled?: bool

				// The ID of the Monitor to use for checking the health of origins
				// within this pool.
				monitor_id?: string

				// Whether this monitor is used for monitoring only (does not
				// affect pool health)
				monitoring_only?: bool

				// Whether this monitor must be healthy for the pool to be
				// considered healthy
				must_be_healthy?: bool

				// The timestamp of when the monitor group member was last updated
				updated_at?: string
			})]])
		})]])
	})
}
