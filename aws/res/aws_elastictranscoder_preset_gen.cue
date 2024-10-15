package res

import "list"

#aws_elastictranscoder_preset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elastictranscoder_preset")
	arn?:         string
	container!:   string
	description?: string
	id?:          string
	name?:        string
	type?:        string
	video_codec_options?: [string]: string
	audio?: #audio | list.MaxItems(1) & [...#audio]
	audio_codec_options?: #audio_codec_options | list.MaxItems(1) & [...#audio_codec_options]
	thumbnails?: #thumbnails | list.MaxItems(1) & [...#thumbnails]
	video?: #video | list.MaxItems(1) & [...#video]
	video_watermarks?: #video_watermarks | [...#video_watermarks]

	#audio: {
		audio_packing_mode?: string
		bit_rate?:           string
		channels?:           string
		codec?:              string
		sample_rate?:        string
	}

	#audio_codec_options: {
		bit_depth?: string
		bit_order?: string
		profile?:   string
		signed?:    string
	}

	#thumbnails: {
		aspect_ratio?:   string
		format?:         string
		interval?:       string
		max_height?:     string
		max_width?:      string
		padding_policy?: string
		resolution?:     string
		sizing_policy?:  string
	}

	#video: {
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
	}

	#video_watermarks: {
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
	}
}
