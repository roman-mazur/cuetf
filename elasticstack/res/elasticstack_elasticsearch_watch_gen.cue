package res

#elasticstack_elasticsearch_watch: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_watch")
	close({
		// The list of actions that will be run if the condition matches.
		actions?: string

		// Defines whether the watch is active or inactive by default. The
		// default value is true, which means the watch is active by
		// default.
		active?: bool

		// The condition that defines if the actions should be run.
		condition?: string

		// Internal identifier of the resource.
		id?: string

		// The input that defines the input that loads the data for the
		// watch.
		input?: string

		// Metadata json that will be copied into the history entries.
		metadata?: string

		// Minimum time in milliseconds between actions being run.
		// Defaults to 5000.
		throttle_period_in_millis?: number

		// Processes the watch payload to prepare it for the watch
		// actions.
		transform?: string

		// The trigger that defines when the watch should run.
		trigger!: string

		// Identifier for the watch.
		watch_id!: string
	})
}
