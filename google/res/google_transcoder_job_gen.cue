package res

import "list"

#google_transcoder_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_transcoder_job")
	close({
		// The time the job was created.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The time the transcoding finished.
		end_time?: string

		// The labels associated with this job. You can use these to
		// organize and group your jobs.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location of the transcoding job resource.
		location!: string

		// The resource name of the job.
		name?: string

		// The time the transcoding started.
		start_time?: string

		// The current state of the job.
		state?: string
		config?: matchN(1, [#config, list.MaxItems(1) & [...#config]])
		project?:  string
		timeouts?: #timeouts

		// Specify the templateId to use for populating Job.config.
		// The default is preset/web-hd, which is the only supported
		// preset.
		template_id?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#config: close({
		ad_breaks?: matchN(1, [_#defs."/$defs/config/$defs/ad_breaks", [..._#defs."/$defs/config/$defs/ad_breaks"]])
		edit_list?: matchN(1, [_#defs."/$defs/config/$defs/edit_list", [..._#defs."/$defs/config/$defs/edit_list"]])
		elementary_streams?: matchN(1, [_#defs."/$defs/config/$defs/elementary_streams", [..._#defs."/$defs/config/$defs/elementary_streams"]])
		encryptions?: matchN(1, [_#defs."/$defs/config/$defs/encryptions", [..._#defs."/$defs/config/$defs/encryptions"]])
		inputs?: matchN(1, [_#defs."/$defs/config/$defs/inputs", [..._#defs."/$defs/config/$defs/inputs"]])
		manifests?: matchN(1, [_#defs."/$defs/config/$defs/manifests", [..._#defs."/$defs/config/$defs/manifests"]])
		mux_streams?: matchN(1, [_#defs."/$defs/config/$defs/mux_streams", [..._#defs."/$defs/config/$defs/mux_streams"]])
		output?: matchN(1, [_#defs."/$defs/config/$defs/output", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/output"]])
		overlays?: matchN(1, [_#defs."/$defs/config/$defs/overlays", [..._#defs."/$defs/config/$defs/overlays"]])
		pubsub_destination?: matchN(1, [_#defs."/$defs/config/$defs/pubsub_destination", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/pubsub_destination"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/config/$defs/ad_breaks": close({
		// Start time in seconds for the ad break, relative to the output
		// file timeline
		start_time_offset?: string
	})

	_#defs: "/$defs/config/$defs/edit_list": close({
		// List of values identifying files that should be used in this
		// atom.
		inputs?: [...string]

		// A unique key for this atom.
		key?: string

		// Start time in seconds for the atom, relative to the input file
		// timeline. The default is '0s'.
		start_time_offset?: string
	})

	_#defs: "/$defs/config/$defs/elementary_streams": close({
		audio_stream?: matchN(1, [_#defs."/$defs/config/$defs/elementary_streams/$defs/audio_stream", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/elementary_streams/$defs/audio_stream"]])
		video_stream?: matchN(1, [_#defs."/$defs/config/$defs/elementary_streams/$defs/video_stream", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/elementary_streams/$defs/video_stream"]])

		// A unique key for this atom.
		key?: string
	})

	_#defs: "/$defs/config/$defs/elementary_streams/$defs/audio_stream": close({
		// Audio bitrate in bits per second.
		bitrate_bps!: number

		// Number of audio channels. The default is '2'.
		channel_count?: number

		// A list of channel names specifying layout of the audio
		// channels. The default is ["fl", "fr"].
		channel_layout?: [...string]

		// The codec for this audio stream. The default is 'aac'.
		codec?: string

		// The audio sample rate in Hertz. The default is '48000'.
		sample_rate_hertz?: number
	})

	_#defs: "/$defs/config/$defs/elementary_streams/$defs/video_stream": close({
		h264?: matchN(1, [_#defs."/$defs/config/$defs/elementary_streams/$defs/video_stream/$defs/h264", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/elementary_streams/$defs/video_stream/$defs/h264"]])
	})

	_#defs: "/$defs/config/$defs/elementary_streams/$defs/video_stream/$defs/h264": close({
		// The video bitrate in bits per second.
		bitrate_bps!: number

		// Target CRF level. The default is '21'.
		crf_level?: number

		// The entropy coder to use. The default is 'cabac'.
		entropy_coder?: string

		// The target video frame rate in frames per second (FPS).
		frame_rate!: number

		// Select the GOP size based on the specified duration. The
		// default is '3s'.
		gop_duration?: string

		// The height of the video in pixels.
		height_pixels?: number

		// Pixel format to use. The default is 'yuv420p'.
		pixel_format?: string

		// Enforces the specified codec preset. The default is 'veryfast'.
		preset?: string
		hlg?: matchN(1, [_#defs."/$defs/config/$defs/elementary_streams/$defs/video_stream/$defs/h264/$defs/hlg", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/elementary_streams/$defs/video_stream/$defs/h264/$defs/hlg"]])
		sdr?: matchN(1, [_#defs."/$defs/config/$defs/elementary_streams/$defs/video_stream/$defs/h264/$defs/sdr", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/elementary_streams/$defs/video_stream/$defs/h264/$defs/sdr"]])

		// Enforces the specified codec profile.
		profile?: string

		// Specify the mode. The default is 'vbr'.
		rate_control_mode?: string

		// Initial fullness of the Video Buffering Verifier (VBV) buffer
		// in bits.
		vbv_fullness_bits?: number

		// Size of the Video Buffering Verifier (VBV) buffer in bits.
		vbv_size_bits?: number

		// The width of the video in pixels.
		width_pixels?: number
	})

	_#defs: "/$defs/config/$defs/elementary_streams/$defs/video_stream/$defs/h264/$defs/hlg": close({})

	_#defs: "/$defs/config/$defs/elementary_streams/$defs/video_stream/$defs/h264/$defs/sdr": close({})

	_#defs: "/$defs/config/$defs/encryptions": close({
		aes128?: matchN(1, [_#defs."/$defs/config/$defs/encryptions/$defs/aes128", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/encryptions/$defs/aes128"]])
		drm_systems?: matchN(1, [_#defs."/$defs/config/$defs/encryptions/$defs/drm_systems", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/encryptions/$defs/drm_systems"]])
		mpeg_cenc?: matchN(1, [_#defs."/$defs/config/$defs/encryptions/$defs/mpeg_cenc", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/encryptions/$defs/mpeg_cenc"]])
		sample_aes?: matchN(1, [_#defs."/$defs/config/$defs/encryptions/$defs/sample_aes", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/encryptions/$defs/sample_aes"]])
		secret_manager_key_source?: matchN(1, [_#defs."/$defs/config/$defs/encryptions/$defs/secret_manager_key_source", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/encryptions/$defs/secret_manager_key_source"]])

		// Identifier for this set of encryption options.
		id!: string
	})

	_#defs: "/$defs/config/$defs/encryptions/$defs/aes128": close({})

	_#defs: "/$defs/config/$defs/encryptions/$defs/drm_systems": close({
		clearkey?: matchN(1, [_#defs."/$defs/config/$defs/encryptions/$defs/drm_systems/$defs/clearkey", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/encryptions/$defs/drm_systems/$defs/clearkey"]])
		fairplay?: matchN(1, [_#defs."/$defs/config/$defs/encryptions/$defs/drm_systems/$defs/fairplay", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/encryptions/$defs/drm_systems/$defs/fairplay"]])
		playready?: matchN(1, [_#defs."/$defs/config/$defs/encryptions/$defs/drm_systems/$defs/playready", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/encryptions/$defs/drm_systems/$defs/playready"]])
		widevine?: matchN(1, [_#defs."/$defs/config/$defs/encryptions/$defs/drm_systems/$defs/widevine", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/encryptions/$defs/drm_systems/$defs/widevine"]])
	})

	_#defs: "/$defs/config/$defs/encryptions/$defs/drm_systems/$defs/clearkey": close({})

	_#defs: "/$defs/config/$defs/encryptions/$defs/drm_systems/$defs/fairplay": close({})

	_#defs: "/$defs/config/$defs/encryptions/$defs/drm_systems/$defs/playready": close({})

	_#defs: "/$defs/config/$defs/encryptions/$defs/drm_systems/$defs/widevine": close({})

	_#defs: "/$defs/config/$defs/encryptions/$defs/mpeg_cenc": close({
		// Specify the encryption scheme.
		scheme!: string
	})

	_#defs: "/$defs/config/$defs/encryptions/$defs/sample_aes": close({})

	_#defs: "/$defs/config/$defs/encryptions/$defs/secret_manager_key_source": close({
		// The name of the Secret Version containing the encryption key in
		// the following format:
		// projects/{project}/secrets/{secret_id}/versions/{version_number}.
		secret_version!: string
	})

	_#defs: "/$defs/config/$defs/inputs": close({
		// A unique key for this input. Must be specified when using
		// advanced mapping and edit lists.
		key?: string

		// URI of the media. Input files must be at least 5 seconds in
		// duration and stored in Cloud Storage (for example,
		// gs://bucket/inputs/file.mp4).
		// If empty, the value is populated from Job.input_uri.
		uri?: string
	})

	_#defs: "/$defs/config/$defs/manifests": close({
		// The name of the generated file. The default is 'manifest'.
		file_name?: string

		// List of user supplied MuxStream.key values that should appear
		// in this manifest.
		mux_streams?: [...string]

		// Type of the manifest. Possible values:
		// ["MANIFEST_TYPE_UNSPECIFIED", "HLS", "DASH"]
		type?: string
	})

	_#defs: "/$defs/config/$defs/mux_streams": close({
		// The container format. The default is 'mp4'.
		container?: string

		// List of ElementaryStream.key values multiplexed in this stream.
		elementary_streams?: [...string]

		// Identifier of the encryption configuration to use.
		encryption_id?: string

		// The name of the generated file.
		file_name?: string
		segment_settings?: matchN(1, [_#defs."/$defs/config/$defs/mux_streams/$defs/segment_settings", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/mux_streams/$defs/segment_settings"]])

		// A unique key for this multiplexed stream.
		key?: string
	})

	_#defs: "/$defs/config/$defs/mux_streams/$defs/segment_settings": close({
		// Duration of the segments in seconds. The default is '6.0s'.
		segment_duration?: string
	})

	_#defs: "/$defs/config/$defs/output": close({
		// URI for the output file(s). For example,
		// gs://my-bucket/outputs/.
		uri?: string
	})

	_#defs: "/$defs/config/$defs/overlays": close({
		animations?: matchN(1, [_#defs."/$defs/config/$defs/overlays/$defs/animations", [..._#defs."/$defs/config/$defs/overlays/$defs/animations"]])
		image?: matchN(1, [_#defs."/$defs/config/$defs/overlays/$defs/image", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/overlays/$defs/image"]])
	})

	_#defs: "/$defs/config/$defs/overlays/$defs/animations": close({
		animation_fade?: matchN(1, [_#defs."/$defs/config/$defs/overlays/$defs/animations/$defs/animation_fade", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/overlays/$defs/animations/$defs/animation_fade"]])
	})

	_#defs: "/$defs/config/$defs/overlays/$defs/animations/$defs/animation_fade": close({
		// The time to end the fade animation, in seconds.
		end_time_offset?: string
		xy?: matchN(1, [_#defs."/$defs/config/$defs/overlays/$defs/animations/$defs/animation_fade/$defs/xy", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/overlays/$defs/animations/$defs/animation_fade/$defs/xy"]])

		// Required. Type of fade animation: 'FADE_IN' or 'FADE_OUT'.
		// The possible values are:
		//
		// * 'FADE_TYPE_UNSPECIFIED': The fade type is not specified.
		//
		// * 'FADE_IN': Fade the overlay object into view.
		//
		// * 'FADE_OUT': Fade the overlay object out of view. Possible
		// values: ["FADE_TYPE_UNSPECIFIED", "FADE_IN", "FADE_OUT"]
		fade_type!: string

		// The time to start the fade animation, in seconds.
		start_time_offset?: string
	})

	_#defs: "/$defs/config/$defs/overlays/$defs/animations/$defs/animation_fade/$defs/xy": close({
		// Normalized x coordinate.
		x?: number

		// Normalized y coordinate.
		y?: number
	})

	_#defs: "/$defs/config/$defs/overlays/$defs/image": close({
		// URI of the image in Cloud Storage. For example,
		// gs://bucket/inputs/image.png.
		uri!: string
	})

	_#defs: "/$defs/config/$defs/pubsub_destination": close({
		// The name of the Pub/Sub topic to publish job completion
		// notification to. For example:
		// projects/{project}/topics/{topic}.
		topic?: string
	})
}
