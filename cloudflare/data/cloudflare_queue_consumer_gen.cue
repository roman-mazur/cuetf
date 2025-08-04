package data

#cloudflare_queue_consumer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_queue_consumer")
	close({
		account_id!:  string
		consumer_id!: string
		settings?: close({
			batch_size?:            number
			max_concurrency?:       number
			max_retries?:           number
			max_wait_time_ms?:      number
			retry_delay?:           number
			visibility_timeout_ms?: number
		})
		created_on?:  string
		queue_id!:    string
		script?:      string
		script_name?: string
		type?:        string
	})
}
