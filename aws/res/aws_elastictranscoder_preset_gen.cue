package res

import "list"

#aws_elastictranscoder_preset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elastictranscoder_preset")
	close({
		arn?:       string
		container!: string
		audio?: matchN(1, [#audio, list.MaxItems(1) & [...#audio]])
		audio_codec_options?: matchN(1, [#audio_codec_options, list.MaxItems(1) & [...#audio_codec_options]])
		thumbnails?: matchN(1, [#thumbnails, list.MaxItems(1) & [...#thumbnails]])
		video?: matchN(1, [#video, list.MaxItems(1) & [...#video]])
		description?: string
		id?:          string
		name?:        string
		video_watermarks?: matchN(1, [#video_watermarks, [...#video_watermarks]])
		region?: string
		type?:   string
		video_codec_options?: [string]: string
	})

	#audio: close({
		audio_packing_mode?: string
		bit_rate?:           string
		channels?:           string
		codec?:              string
		sample_rate?:        string
	})

	#audio_codec_options: close({
		bit_depth?: string
		bit_order?: string
		profile?:   string
		signed?:    string
	})

	#thumbnails: close({
		aspect_ratio?:   string
		format?:         string
		interval?:       string
		max_height?:     string
		max_width?:      string
		padding_policy?: string
		resolution?:     string
		sizing_policy?:  string
	})

	#video: close({
		aspect_ratio?:         string
		bit_rate?:             string
		codec?:                string
		display_aspect_ratio?: string
		fixed_gop?:            string
		frame_rate?:           string
		keyframes_max_dist?:   string
		max_frame_rate?:       string
		max_height?:           string
		max_width?:            string
		padding_policy?:       string
		resolution?:           string
		sizing_policy?:        string
	})

	#video_watermarks: close({
		horizontal_align?:  string
		horizontal_offset?: string
		id?:                string
		max_height?:        string
		max_width?:         string
		opacity?:           string
		sizing_policy?:     string
		target?:            string
		vertical_align?:    string
		vertical_offset?:   string
	})
}
