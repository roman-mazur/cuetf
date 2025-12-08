package res

#cloudflare_stream_live_input: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_stream_live_input")
	close({
		// Identifier.
		account_id!: string

		// The date and time the live input was created.
		created?: string

		// Sets the creator ID asssociated with this live input.
		default_creator?: string

		// Records the input to a Cloudflare Stream video. Behavior
		// depends on the mode. In most cases, the video will initially
		// be viewable as a live video and transition to on-demand after
		// a condition is satisfied.
		recording?: close({
			// Lists the origins allowed to display videos created with this
			// input. Enter allowed origin domains in an array and use `*`
			// for wildcard subdomains. An empty array allows videos to be
			// viewed on any origin.
			allowed_origins?: [...string]

			// Disables reporting the number of live viewers when this
			// property is set to `true`.
			hide_live_viewer_count?: bool

			// Specifies the recording behavior for the live input. Set this
			// value to `off` to prevent a recording. Set the value to
			// `automatic` to begin a recording and transition to on-demand
			// after Stream Live stops receiving input.
			// Available values: "off", "automatic".
			mode?: string

			// Indicates if a video using the live input has the
			// `requireSignedURLs` property set. Also enforces access
			// controls on any video recording of the livestream with the
			// live input.
			require_signed_urls?: bool

			// Determines the amount of time a live input configured in
			// `automatic` mode should wait before a recording transitions
			// from live to on-demand. `0` is recommended for most use cases
			// and indicates the platform default should be used.
			timeout_seconds?: number
		})

		// Indicates the number of days after which the live inputs
		// recordings will be deleted. When a stream completes and the
		// recording is ready, the value is used to calculate a scheduled
		// deletion date for that recording. Omit the field to indicate
		// no change, or include with a `null` value to remove an
		// existing scheduled deletion.
		delete_recording_after_days?: number

		// Details for streaming to an live input using RTMPS.
		rtmps?: close({
			// The secret key to use when streaming via RTMPS to a live input.
			stream_key?: string

			// The RTMPS URL you provide to the broadcaster, which they stream
			// live video to.
			url?: string
		})

		// A unique identifier for a live input.
		live_input_identifier?: string

		// A user modifiable key-value store used to reference other
		// systems of record for managing live inputs.
		meta?: string

		// The date and time the live input was last modified.
		modified?: string

		// Details for playback from an live input using RTMPS.
		rtmps_playback?: close({
			// The secret key to use for playback via RTMPS.
			stream_key?: string

			// The URL used to play live video over RTMPS.
			url?: string
		})

		// Details for streaming to a live input using SRT.
		srt?: close({
			// The secret key to use when streaming via SRT to a live input.
			passphrase?: string

			// The identifier of the live input to use when streaming via SRT.
			stream_id?: string

			// The SRT URL you provide to the broadcaster, which they stream
			// live video to.
			url?: string
		})

		// Details for playback from an live input using SRT.
		srt_playback?: close({
			// The secret key to use for playback via SRT.
			passphrase?: string

			// The identifier of the live input to use for playback via SRT.
			stream_id?: string

			// The URL used to play live video over SRT.
			url?: string
		})

		// Details for streaming to a live input using WebRTC.
		web_rtc?: close({
			// The WebRTC URL you provide to the broadcaster, which they
			// stream live video to.
			url?: string
		})

		// Details for playback from a live input using WebRTC.
		web_rtc_playback?: close({
			// The URL used to play live video over WebRTC.
			url?: string
		})

		// The connection status of a live input.
		// Available values: "connected", "reconnected", "reconnecting",
		// "client_disconnect", "ttl_exceeded", "failed_to_connect",
		// "failed_to_reconnect", "new_configuration_accepted".
		status?: string

		// A unique identifier for a live input.
		uid?: string
	})
}
