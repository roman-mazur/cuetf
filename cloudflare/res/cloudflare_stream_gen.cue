package res

#cloudflare_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_stream")
	close({
		account_id!: string
		allowed_origins?: [...string]
		input?: close({
			height?: number
			width?:  number
		})
		created?:    string
		creator?:    string
		duration?:   number
		identifier?: string
		live_input?: string
		playback?: close({
			dash?: string
			hls?:  string
		})
		max_duration_seconds?: number
		meta?:                 string
		modified?:             string
		preview?:              string
		ready_to_stream?:      bool
		ready_to_stream_at?:   string
		require_signed_urls?:  bool
		status?: close({
			error_reason_code?: string
			error_reason_text?: string
			pct_complete?:      string
			state?:             string
		})
		scheduled_deletion?:      string
		size?:                    number
		thumbnail?:               string
		thumbnail_timestamp_pct?: number
		watermark?: close({
			created?:         string
			downloaded_from?: string
			height?:          number
			name?:            string
			opacity?:         number
			padding?:         number
			position?:        string
			scale?:           number
			size?:            number
			uid?:             string
			width?:           number
		})
		uid?:           string
		upload_expiry?: string
		uploaded?:      string
	})
}
