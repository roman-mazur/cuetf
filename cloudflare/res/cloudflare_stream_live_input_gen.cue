package res

#cloudflare_stream_live_input: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_stream_live_input")
	close({
		account_id!: string
		recording?: close({
			allowed_origins?: [...string]
			hide_live_viewer_count?: bool
			mode?:                   string
			require_signed_urls?:    bool
			timeout_seconds?:        number
		})
		rtmps?: close({
			stream_key?: string
			url?:        string
		})
		rtmps_playback?: close({
			stream_key?: string
			url?:        string
		})
		created?:         string
		default_creator?: string
		srt?: close({
			passphrase?: string
			stream_id?:  string
			url?:        string
		})
		srt_playback?: close({
			passphrase?: string
			stream_id?:  string
			url?:        string
		})
		delete_recording_after_days?: number
		live_input_identifier?:       string
		web_rtc?: close({
			url?: string
		})
		web_rtc_playback?: close({
			url?: string
		})
		meta?:     string
		modified?: string
		status?:   string
		uid?:      string
	})
}
