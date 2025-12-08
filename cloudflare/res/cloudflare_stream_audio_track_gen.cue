package res

#cloudflare_stream_audio_track: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_stream_audio_track")
	close({
		// The account identifier tag.
		account_id!: string

		// The unique identifier for an additional audio track.
		audio_identifier?: string

		// Denotes whether the audio track will be played by default in a
		// player.
		default?: bool

		// A Cloudflare-generated unique identifier for a media item.
		identifier!: string

		// A string to uniquely identify the track amongst other audio
		// track labels for the specified video.
		label?: string

		// Specifies the processing status of the video.
		// Available values: "queued", "ready", "error".
		status?: string

		// A Cloudflare-generated unique identifier for a media item.
		uid?: string
	})
}
