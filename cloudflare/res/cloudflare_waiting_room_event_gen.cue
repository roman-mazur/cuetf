package res

#cloudflare_waiting_room_event: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_waiting_room_event")
	close({
		// If set, the event will override the waiting room's
		// `custom_page_html` property while it is active. If null, the
		// event will inherit it.
		custom_page_html?: string
		created_on?:       string

		// A note that you can use to add more details about the event.
		description?: string

		// If set, the event will override the waiting room's
		// `disable_session_renewal` property while it is active. If
		// null, the event will inherit it.
		disable_session_renewal?: bool

		// An ISO 8601 timestamp that marks the end of the event.
		event_end_time!: string

		// An ISO 8601 timestamp that marks the start of the event. At
		// this time, queued users will be processed with the event's
		// configuration. The start time must be at least one minute
		// before `event_end_time`.
		event_start_time!: string

		// A unique name to identify the event. Only alphanumeric
		// characters, hyphens and underscores are allowed.
		name!: string
		id?:   string

		// If set, the event will override the waiting room's
		// `new_users_per_minute` property while it is active. If null,
		// the event will inherit it. This can only be set if the event's
		// `total_active_users` property is also set.
		new_users_per_minute?: number
		modified_on?:          string

		// An ISO 8601 timestamp that marks when to begin queueing all
		// users before the event starts. The prequeue must start at
		// least five minutes before `event_start_time`.
		prequeue_start_time?: string

		// If set, the event will override the waiting room's
		// `queueing_method` property while it is active. If null, the
		// event will inherit it.
		queueing_method?: string

		// If set, the event will override the waiting room's
		// `session_duration` property while it is active. If null, the
		// event will inherit it.
		session_duration?: number

		// If enabled, users in the prequeue will be shuffled randomly at
		// the `event_start_time`. Requires that `prequeue_start_time` is
		// not null. This is useful for situations when many users will
		// join the event prequeue at the same time and you want to
		// shuffle them to ensure fairness. Naturally, it makes the most
		// sense to enable this feature when the `queueing_method` during
		// the event respects ordering such as **fifo**, or else the
		// shuffling may be unnecessary.
		shuffle_at_event_start?: bool

		// Suspends or allows an event. If set to `true`, the event is
		// ignored and traffic will be handled based on the waiting room
		// configuration.
		suspended?: bool

		// If set, the event will override the waiting room's
		// `total_active_users` property while it is active. If null, the
		// event will inherit it. This can only be set if the event's
		// `new_users_per_minute` property is also set.
		total_active_users?: number

		// If set, the event will override the waiting room's
		// `turnstile_action` property while it is active. If null, the
		// event will inherit it.
		// Available values: "log", "infinite_queue".
		turnstile_action?: string

		// If set, the event will override the waiting room's
		// `turnstile_mode` property while it is active. If null, the
		// event will inherit it.
		// Available values: "off", "invisible",
		// "visible_non_interactive", "visible_managed".
		turnstile_mode?: string

		// Identifier.
		zone_id!:         string
		waiting_room_id!: string
	})
}
