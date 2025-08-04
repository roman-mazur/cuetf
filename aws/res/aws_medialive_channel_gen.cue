package res

import "list"

#aws_medialive_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_medialive_channel")
	close({
		arn?:           string
		channel_class!: string
		channel_id?:    string
		id?:            string
		log_level?:     string
		name!:          string
		region?:        string
		role_arn?:      string
		start_channel?: bool
		cdi_input_specification?: matchN(1, [#cdi_input_specification, list.MaxItems(1) & [...#cdi_input_specification]])
		tags?: [string]:     string
		tags_all?: [string]: string
		destinations?: matchN(1, [#destinations, [_, ...] & [...#destinations]])
		encoder_settings?: matchN(1, [#encoder_settings, list.MaxItems(1) & [_, ...] & [...#encoder_settings]])
		input_attachments?: matchN(1, [#input_attachments, [_, ...] & [...#input_attachments]])
		input_specification?: matchN(1, [#input_specification, list.MaxItems(1) & [_, ...] & [...#input_specification]])
		maintenance?: matchN(1, [#maintenance, list.MaxItems(1) & [...#maintenance]])
		timeouts?: #timeouts
		vpc?: matchN(1, [#vpc, list.MaxItems(1) & [...#vpc]])
	})

	#cdi_input_specification: close({
		resolution!: string
	})

	#destinations: close({
		media_package_settings?: matchN(1, [_#defs."/$defs/destinations/$defs/media_package_settings", [..._#defs."/$defs/destinations/$defs/media_package_settings"]])
		multiplex_settings?: matchN(1, [_#defs."/$defs/destinations/$defs/multiplex_settings", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/multiplex_settings"]])
		settings?: matchN(1, [_#defs."/$defs/destinations/$defs/settings", [..._#defs."/$defs/destinations/$defs/settings"]])
		id!: string
	})

	#encoder_settings: close({
		audio_descriptions?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions", [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions"]])
		avail_blanking?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/avail_blanking", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/avail_blanking"]])
		caption_descriptions?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions", [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions"]])
		global_configuration?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/global_configuration", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/global_configuration"]])
		motion_graphics_configuration?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/motion_graphics_configuration", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/motion_graphics_configuration"]])
		nielsen_configuration?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/nielsen_configuration", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/nielsen_configuration"]])
		output_groups?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups", [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups"]])
		timecode_config?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/timecode_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/timecode_config"]])
		video_descriptions?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions", [..._#defs."/$defs/encoder_settings/$defs/video_descriptions"]])
	})

	#input_attachments: close({
		automatic_input_failover_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/automatic_input_failover_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/automatic_input_failover_settings"]])
		input_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings"]])
		input_attachment_name!: string
		input_id!:              string
	})

	#input_specification: close({
		codec!:            string
		input_resolution!: string
		maximum_bitrate!:  string
	})

	#maintenance: close({
		maintenance_day!:        string
		maintenance_start_time!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc: close({
		availability_zones?: [...string]
		network_interface_ids?: [...string]
		public_address_allocation_ids!: [...string]
		security_group_ids?: [...string]
		subnet_ids!: [...string]
	})

	_#defs: "/$defs/destinations/$defs/media_package_settings": close({
		channel_id!: string
	})

	_#defs: "/$defs/destinations/$defs/multiplex_settings": close({
		multiplex_id!: string
		program_name!: string
	})

	_#defs: "/$defs/destinations/$defs/settings": close({
		password_param?: string
		stream_name?:    string
		url?:            string
		username?:       string
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions": close({
		audio_selector_name!:   string
		audio_type?:            string
		audio_type_control?:    string
		language_code?:         string
		language_code_control?: string
		name!:                  string
		audio_normalization_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_normalization_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_normalization_settings"]])
		stream_name?: string
		audio_watermark_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_watermark_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_watermark_settings"]])
		codec_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings"]])
		remix_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/remix_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/remix_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_normalization_settings": close({
		algorithm?:         string
		algorithm_control?: string
		target_lkfs?:       number
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_watermark_settings": close({
		nielsen_watermarks_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_watermark_settings/$defs/nielsen_watermarks_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_watermark_settings/$defs/nielsen_watermarks_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_watermark_settings/$defs/nielsen_watermarks_settings": close({
		nielsen_cbet_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_watermark_settings/$defs/nielsen_watermarks_settings/$defs/nielsen_cbet_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_watermark_settings/$defs/nielsen_watermarks_settings/$defs/nielsen_cbet_settings"]])
		nielsen_naes_ii_nw_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_watermark_settings/$defs/nielsen_watermarks_settings/$defs/nielsen_naes_ii_nw_settings", [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_watermark_settings/$defs/nielsen_watermarks_settings/$defs/nielsen_naes_ii_nw_settings"]])
		nielsen_distribution_type?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_watermark_settings/$defs/nielsen_watermarks_settings/$defs/nielsen_cbet_settings": close({
		cbet_check_digit_string!: string
		cbet_stepaside!:          string
		csid!:                    string
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/audio_watermark_settings/$defs/nielsen_watermarks_settings/$defs/nielsen_naes_ii_nw_settings": close({
		check_digit_string!: string
		sid!:                number
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings": close({
		aac_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/aac_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/aac_settings"]])
		ac3_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/ac3_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/ac3_settings"]])
		eac3_atmos_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/eac3_atmos_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/eac3_atmos_settings"]])
		eac3_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/eac3_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/eac3_settings"]])
		mp2_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/mp2_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/mp2_settings"]])
		pass_through_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/pass_through_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/pass_through_settings"]])
		wav_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/wav_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/wav_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/aac_settings": close({
		bitrate?:           number
		coding_mode?:       string
		input_type?:        string
		profile?:           string
		rate_control_mode?: string
		raw_format?:        string
		sample_rate?:       number
		spec?:              string
		vbr_quality?:       string
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/ac3_settings": close({
		bitrate?:          number
		bitstream_mode?:   string
		coding_mode?:      string
		dialnorm?:         number
		drc_profile?:      string
		lfe_filter?:       string
		metadata_control?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/eac3_atmos_settings": close({
		bitrate?:       number
		coding_mode?:   string
		dialnorm?:      number
		drc_line?:      string
		drc_rf?:        string
		height_trim?:   number
		surround_trim?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/eac3_settings": close({
		attenuation_control?:      string
		bitrate?:                  number
		bitstream_mode?:           string
		coding_mode?:              string
		dc_filter?:                string
		dialnorm?:                 number
		drc_line?:                 string
		drc_rf?:                   string
		lfe_control?:              string
		lfe_filter?:               string
		lo_ro_center_mix_level?:   number
		lo_ro_surround_mix_level?: number
		lt_rt_center_mix_level?:   number
		lt_rt_surround_mix_level?: number
		metadata_control?:         string
		passthrough_control?:      string
		phase_control?:            string
		stereo_downmix?:           string
		surround_ex_mode?:         string
		surround_mode?:            string
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/mp2_settings": close({
		bitrate?:     number
		coding_mode?: string
		sample_rate?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/pass_through_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/codec_settings/$defs/wav_settings": close({
		bit_depth?:   number
		coding_mode?: string
		sample_rate?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/remix_settings": close({
		channel_mappings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/remix_settings/$defs/channel_mappings", [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/remix_settings/$defs/channel_mappings"]])
		channels_in?:  number
		channels_out?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/remix_settings/$defs/channel_mappings": close({
		input_channel_levels?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/remix_settings/$defs/channel_mappings/$defs/input_channel_levels", [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/audio_descriptions/$defs/remix_settings/$defs/channel_mappings/$defs/input_channel_levels"]])
		output_channel!: number
	})

	_#defs: "/$defs/encoder_settings/$defs/audio_descriptions/$defs/remix_settings/$defs/channel_mappings/$defs/input_channel_levels": close({
		gain!:          number
		input_channel!: number
	})

	_#defs: "/$defs/encoder_settings/$defs/avail_blanking": close({
		avail_blanking_image?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/avail_blanking/$defs/avail_blanking_image", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/avail_blanking/$defs/avail_blanking_image"]])
		state?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/avail_blanking/$defs/avail_blanking_image": close({
		password_param?: string
		uri!:            string
		username?:       string
	})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions": close({
		destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings"]])
		accessibility?:         string
		caption_selector_name!: string
		language_code?:         string
		language_description?:  string
		name!:                  string
	})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings": close({
		arib_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/arib_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/arib_destination_settings"]])
		burn_in_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/burn_in_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/burn_in_destination_settings"]])
		dvb_sub_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/dvb_sub_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/dvb_sub_destination_settings"]])
		ebu_tt_d_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/ebu_tt_d_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/ebu_tt_d_destination_settings"]])
		embedded_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/embedded_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/embedded_destination_settings"]])
		embedded_plus_scte20_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/embedded_plus_scte20_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/embedded_plus_scte20_destination_settings"]])
		rtmp_caption_info_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/rtmp_caption_info_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/rtmp_caption_info_destination_settings"]])
		scte20_plus_embedded_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/scte20_plus_embedded_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/scte20_plus_embedded_destination_settings"]])
		scte27_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/scte27_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/scte27_destination_settings"]])
		smpte_tt_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/smpte_tt_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/smpte_tt_destination_settings"]])
		teletext_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/teletext_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/teletext_destination_settings"]])
		ttml_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/ttml_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/ttml_destination_settings"]])
		webvtt_destination_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/webvtt_destination_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/webvtt_destination_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/arib_destination_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/burn_in_destination_settings": close({
		alignment?:          string
		background_color?:   string
		background_opacity?: number
		font_color?:         string
		font_opacity?:       number
		font_resolution?:    number
		font_size?:          string
		outline_color!:      string
		outline_size?:       number
		font?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/burn_in_destination_settings/$defs/font", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/burn_in_destination_settings/$defs/font"]])
		shadow_color?:          string
		shadow_opacity?:        number
		shadow_x_offset?:       number
		shadow_y_offset?:       number
		teletext_grid_control!: string
		x_position?:            number
		y_position?:            number
	})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/burn_in_destination_settings/$defs/font": close({
		password_param?: string
		uri!:            string
		username?:       string
	})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/dvb_sub_destination_settings": close({
		alignment?:          string
		background_color?:   string
		background_opacity?: number
		font_color?:         string
		font_opacity?:       number
		font_resolution?:    number
		font_size?:          string
		outline_color?:      string
		outline_size?:       number
		font?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/dvb_sub_destination_settings/$defs/font", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/dvb_sub_destination_settings/$defs/font"]])
		shadow_color?:          string
		shadow_opacity?:        number
		shadow_x_offset?:       number
		shadow_y_offset?:       number
		teletext_grid_control?: string
		x_position?:            number
		y_position?:            number
	})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/dvb_sub_destination_settings/$defs/font": close({
		password_param?: string
		uri!:            string
		username?:       string
	})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/ebu_tt_d_destination_settings": close({
		copyright_holder?: string
		fill_line_gap?:    string
		font_family?:      string
		style_control?:    string
	})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/embedded_destination_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/embedded_plus_scte20_destination_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/rtmp_caption_info_destination_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/scte20_plus_embedded_destination_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/scte27_destination_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/smpte_tt_destination_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/teletext_destination_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/ttml_destination_settings": close({
		style_control!: string
	})

	_#defs: "/$defs/encoder_settings/$defs/caption_descriptions/$defs/destination_settings/$defs/webvtt_destination_settings": close({
		style_control!: string
	})

	_#defs: "/$defs/encoder_settings/$defs/global_configuration": close({
		input_loss_behavior?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/global_configuration/$defs/input_loss_behavior", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/global_configuration/$defs/input_loss_behavior"]])
		initial_audio_gain?:           number
		input_end_action?:             string
		output_locking_mode?:          string
		output_timing_source?:         string
		support_low_framerate_inputs?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/global_configuration/$defs/input_loss_behavior": close({
		input_loss_image_slate?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/global_configuration/$defs/input_loss_behavior/$defs/input_loss_image_slate", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/global_configuration/$defs/input_loss_behavior/$defs/input_loss_image_slate"]])
		black_frame_msec?:       number
		input_loss_image_color?: string
		input_loss_image_type?:  string
		repeat_frame_msec?:      number
	})

	_#defs: "/$defs/encoder_settings/$defs/global_configuration/$defs/input_loss_behavior/$defs/input_loss_image_slate": close({
		password_param?: string
		uri!:            string
		username?:       string
	})

	_#defs: "/$defs/encoder_settings/$defs/motion_graphics_configuration": close({
		motion_graphics_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/motion_graphics_configuration/$defs/motion_graphics_settings", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/motion_graphics_configuration/$defs/motion_graphics_settings"]])
		motion_graphics_insertion?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/motion_graphics_configuration/$defs/motion_graphics_settings": close({
		html_motion_graphics_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/motion_graphics_configuration/$defs/motion_graphics_settings/$defs/html_motion_graphics_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/motion_graphics_configuration/$defs/motion_graphics_settings/$defs/html_motion_graphics_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/motion_graphics_configuration/$defs/motion_graphics_settings/$defs/html_motion_graphics_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/nielsen_configuration": close({
		distributor_id?:             string
		nielsen_pcm_to_id3_tagging?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups": close({
		output_group_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings"]])
		outputs?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs", [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs"]])
		name?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings": close({
		archive_group_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/archive_group_settings", [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/archive_group_settings"]])
		frame_capture_group_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/frame_capture_group_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/frame_capture_group_settings"]])
		hls_group_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings"]])
		media_package_group_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/media_package_group_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/media_package_group_settings"]])
		ms_smooth_group_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/ms_smooth_group_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/ms_smooth_group_settings"]])
		multiplex_group_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/multiplex_group_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/multiplex_group_settings"]])
		rtmp_group_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/rtmp_group_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/rtmp_group_settings"]])
		udp_group_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/udp_group_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/udp_group_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/archive_group_settings": close({
		archive_cdn_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/archive_group_settings/$defs/archive_cdn_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/archive_group_settings/$defs/archive_cdn_settings"]])
		destination?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/archive_group_settings/$defs/destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/archive_group_settings/$defs/destination"]])
		rollover_interval?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/archive_group_settings/$defs/archive_cdn_settings": close({
		archive_s3_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/archive_group_settings/$defs/archive_cdn_settings/$defs/archive_s3_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/archive_group_settings/$defs/archive_cdn_settings/$defs/archive_s3_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/archive_group_settings/$defs/archive_cdn_settings/$defs/archive_s3_settings": close({
		canned_acl?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/archive_group_settings/$defs/destination": close({
		destination_ref_id!: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/frame_capture_group_settings": close({
		destination?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/frame_capture_group_settings/$defs/destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/frame_capture_group_settings/$defs/destination"]])
		frame_capture_cdn_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/frame_capture_group_settings/$defs/frame_capture_cdn_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/frame_capture_group_settings/$defs/frame_capture_cdn_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/frame_capture_group_settings/$defs/destination": close({
		destination_ref_id!: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/frame_capture_group_settings/$defs/frame_capture_cdn_settings": close({
		frame_capture_s3_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/frame_capture_group_settings/$defs/frame_capture_cdn_settings/$defs/frame_capture_s3_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/frame_capture_group_settings/$defs/frame_capture_cdn_settings/$defs/frame_capture_s3_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/frame_capture_group_settings/$defs/frame_capture_cdn_settings/$defs/frame_capture_s3_settings": close({
		canned_acl?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings": close({
		ad_markers?: [...string]
		base_url_content?:            string
		base_url_content1?:           string
		base_url_manifest?:           string
		base_url_manifest1?:          string
		caption_language_setting?:    string
		client_cache?:                string
		codec_specification?:         string
		constant_iv?:                 string
		directory_structure?:         string
		discontinuity_tags?:          string
		encryption_type?:             string
		hls_id3_segment_tagging?:     string
		iframe_only_playlists?:       string
		incomplete_segment_behavior?: string
		index_n_segments?:            number
		input_loss_action?:           string
		iv_in_manifest?:              string
		iv_source?:                   string
		keep_segments?:               number
		caption_language_mappings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/caption_language_mappings", list.MaxItems(4) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/caption_language_mappings"]])
		destination?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/destination"]])
		key_format?:               string
		key_format_versions?:      string
		manifest_compression?:     string
		manifest_duration_format?: string
		min_segment_length?:       number
		mode?:                     string
		output_selection?:         string
		program_date_time?:        string
		program_date_time_clock?:  string
		hls_cdn_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings", [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings"]])
		program_date_time_period?:     number
		redundant_manifest?:           string
		segment_length?:               number
		segments_per_subdirectory?:    number
		stream_inf_resolution?:        string
		timed_metadata_id3_frame?:     string
		timed_metadata_id3_period?:    number
		timestamp_delta_milliseconds?: number
		ts_file_mode?:                 string
		key_provider_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/key_provider_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/key_provider_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/caption_language_mappings": close({
		caption_channel!:      number
		language_code!:        string
		language_description!: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/destination": close({
		destination_ref_id!: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings": close({
		hls_akamai_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_akamai_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_akamai_settings"]])
		hls_basic_put_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_basic_put_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_basic_put_settings"]])
		hls_media_store_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_media_store_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_media_store_settings"]])
		hls_s3_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_s3_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_s3_settings"]])
		hls_webdav_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_webdav_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_webdav_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_akamai_settings": close({
		connection_retry_interval?: number
		filecache_duration?:        number
		http_transfer_mode?:        string
		num_retries?:               number
		restart_delay?:             number
		salt?:                      string
		token?:                     string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_basic_put_settings": close({
		connection_retry_interval?: number
		filecache_duration?:        number
		num_retries?:               number
		restart_delay?:             number
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_media_store_settings": close({
		connection_retry_interval?: number
		filecache_duration?:        number
		media_store_storage_class?: string
		num_retries?:               number
		restart_delay?:             number
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_s3_settings": close({
		canned_acl?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/hls_cdn_settings/$defs/hls_webdav_settings": close({
		connection_retry_interval?: number
		filecache_duration?:        number
		http_transfer_mode?:        string
		num_retries?:               number
		restart_delay?:             number
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/key_provider_settings": close({
		static_key_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/key_provider_settings/$defs/static_key_settings", [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/key_provider_settings/$defs/static_key_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/key_provider_settings/$defs/static_key_settings": close({
		key_provider_server?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/key_provider_settings/$defs/static_key_settings/$defs/key_provider_server", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/key_provider_settings/$defs/static_key_settings/$defs/key_provider_server"]])
		static_key_value!: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/hls_group_settings/$defs/key_provider_settings/$defs/static_key_settings/$defs/key_provider_server": close({
		password_param?: string
		uri!:            string
		username?:       string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/media_package_group_settings": close({
		destination?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/media_package_group_settings/$defs/destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/media_package_group_settings/$defs/destination"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/media_package_group_settings/$defs/destination": close({
		destination_ref_id!: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/ms_smooth_group_settings": close({
		acquisition_point_id?:        string
		audio_only_timecode_control?: string
		certificate_mode?:            string
		connection_retry_interval?:   number
		event_id?:                    string
		event_id_mode?:               string
		event_stop_behavior?:         string
		filecache_duration?:          number
		fragment_length?:             number
		input_loss_action?:           string
		num_retries?:                 number
		restart_delay?:               number
		segmentation_mode?:           string
		send_delay_ms?:               number
		sparse_track_type?:           string
		destination?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/ms_smooth_group_settings/$defs/destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/ms_smooth_group_settings/$defs/destination"]])
		stream_manifest_behavior?: string
		timestamp_offset?:         string
		timestamp_offset_mode?:    string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/ms_smooth_group_settings/$defs/destination": close({
		destination_ref_id!: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/multiplex_group_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/rtmp_group_settings": close({
		ad_markers?: [...string]
		authentication_scheme?: string
		cache_full_behavior?:   string
		cache_length?:          number
		caption_data?:          string
		input_loss_action?:     string
		restart_delay?:         number
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/output_group_settings/$defs/udp_group_settings": close({
		input_loss_action?:         string
		timed_metadata_id3_frame?:  string
		timed_metadata_id3_period?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs": close({
		output_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings"]])
		audio_description_names?: [...string]
		caption_description_names?: [...string]
		output_name?:            string
		video_description_name?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings": close({
		archive_output_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings"]])
		frame_capture_output_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/frame_capture_output_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/frame_capture_output_settings"]])
		hls_output_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings"]])
		media_package_output_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/media_package_output_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/media_package_output_settings"]])
		ms_smooth_output_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/ms_smooth_output_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/ms_smooth_output_settings"]])
		multiplex_output_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/multiplex_output_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/multiplex_output_settings"]])
		rtmp_output_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/rtmp_output_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/rtmp_output_settings"]])
		udp_output_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings": close({
		container_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings"]])
		extension?:     string
		name_modifier?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings": close({
		m2ts_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/m2ts_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/m2ts_settings"]])
		raw_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/raw_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/raw_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/m2ts_settings": close({
		absent_input_audio_behavior?: string
		arib?:                        string
		arib_captions_pid?:           string
		arib_captions_pid_control?:   string
		audio_buffer_model?:          string
		audio_frames_per_pes?:        number
		audio_pids?:                  string
		audio_stream_type?:           string
		bitrate?:                     number
		buffer_model?:                string
		cc_descriptor?:               string
		dvb_sub_pids?:                string
		dvb_teletext_pid?:            string
		ebif?:                        string
		ebp_audio_interval?:          string
		ebp_lookahead_ms?:            number
		ebp_placement?:               string
		ecm_pid?:                     string
		es_rate_in_pes?:              string
		etv_platform_pid?:            string
		etv_signal_pid?:              string
		fragment_time?:               number
		klv?:                         string
		dvb_nit_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_nit_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_nit_settings"]])
		dvb_sdt_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_sdt_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_sdt_settings"]])
		klv_data_pids?: string
		dvb_tdt_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_tdt_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_tdt_settings"]])
		nielsen_id3_behavior?:    string
		null_packet_bitrate?:     number
		pat_interval?:            number
		pcr_control?:             string
		pcr_period?:              number
		pcr_pid?:                 string
		pmt_interval?:            number
		pmt_pid?:                 string
		program_num?:             number
		rate_mode?:               string
		scte27_pids?:             string
		scte35_control?:          string
		scte35_pid?:              string
		segmentation_markers?:    string
		segmentation_style?:      string
		segmentation_time?:       number
		timed_metadata_behavior?: string
		timed_metadata_pid?:      string
		transport_stream_id?:     number
		video_pid?:               string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_nit_settings": close({
		network_id!:   number
		network_name!: string
		rep_interval?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_sdt_settings": close({
		output_sdt?:            string
		rep_interval?:          number
		service_name?:          string
		service_provider_name?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_tdt_settings": close({
		rep_interval?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/archive_output_settings/$defs/container_settings/$defs/raw_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/frame_capture_output_settings": close({
		name_modifier?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings": close({
		hls_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings"]])
		h265_packaging_type?: string
		name_modifier?:       string
		segment_modifier?:    string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings": close({
		audio_only_hls_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/audio_only_hls_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/audio_only_hls_settings"]])
		fmp4_hls_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/fmp4_hls_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/fmp4_hls_settings"]])
		frame_capture_hls_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/frame_capture_hls_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/frame_capture_hls_settings"]])
		standard_hls_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/standard_hls_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/standard_hls_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/audio_only_hls_settings": close({
		audio_only_image?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/audio_only_hls_settings/$defs/audio_only_image", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/audio_only_hls_settings/$defs/audio_only_image"]])
		audio_group_id?:   string
		audio_track_type?: string
		segment_type?:     string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/audio_only_hls_settings/$defs/audio_only_image": close({
		password_param?: string
		uri!:            string
		username?:       string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/fmp4_hls_settings": close({
		audio_rendition_sets?:    string
		nielsen_id3_behavior?:    string
		timed_metadata_behavior?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/frame_capture_hls_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/standard_hls_settings": close({
		m3u8_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/standard_hls_settings/$defs/m3u8_settings", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/standard_hls_settings/$defs/m3u8_settings"]])
		audio_rendition_sets?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/hls_output_settings/$defs/hls_settings/$defs/standard_hls_settings/$defs/m3u8_settings": close({
		audio_frames_per_pes?:    number
		audio_pids?:              string
		ecm_pid?:                 string
		nielsen_id3_behavior?:    string
		pat_interval?:            number
		pcr_control?:             string
		pcr_period?:              number
		pcr_pid?:                 string
		pmt_interval?:            number
		pmt_pid?:                 string
		program_num?:             number
		scte35_behavior?:         string
		scte35_pid?:              string
		timed_metadata_behavior?: string
		timed_metadata_pid?:      string
		transport_stream_id?:     number
		video_pid?:               string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/media_package_output_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/ms_smooth_output_settings": close({
		h265_packaging_type?: string
		name_modifier?:       string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/multiplex_output_settings": close({
		destination?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/multiplex_output_settings/$defs/destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/multiplex_output_settings/$defs/destination"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/multiplex_output_settings/$defs/destination": close({
		destination_ref_id!: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/rtmp_output_settings": close({
		destination?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/rtmp_output_settings/$defs/destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/rtmp_output_settings/$defs/destination"]])
		certificate_mode?:          string
		connection_retry_interval?: number
		num_retries?:               number
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/rtmp_output_settings/$defs/destination": close({
		destination_ref_id!: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings": close({
		container_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings"]])
		destination?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/destination"]])
		fec_output_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/fec_output_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/fec_output_settings"]])
		buffer_msec?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings": close({
		m2ts_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings/$defs/m2ts_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings/$defs/m2ts_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings/$defs/m2ts_settings": close({
		absent_input_audio_behavior?: string
		arib?:                        string
		arib_captions_pid?:           string
		arib_captions_pid_control?:   string
		audio_buffer_model?:          string
		audio_frames_per_pes?:        number
		audio_pids?:                  string
		audio_stream_type?:           string
		bitrate?:                     number
		buffer_model?:                string
		cc_descriptor?:               string
		dvb_sub_pids?:                string
		dvb_teletext_pid?:            string
		ebif?:                        string
		ebp_audio_interval?:          string
		ebp_lookahead_ms?:            number
		ebp_placement?:               string
		ecm_pid?:                     string
		es_rate_in_pes?:              string
		etv_platform_pid?:            string
		etv_signal_pid?:              string
		fragment_time?:               number
		klv?:                         string
		dvb_nit_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_nit_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_nit_settings"]])
		dvb_sdt_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_sdt_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_sdt_settings"]])
		klv_data_pids?: string
		dvb_tdt_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_tdt_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_tdt_settings"]])
		nielsen_id3_behavior?:    string
		null_packet_bitrate?:     number
		pat_interval?:            number
		pcr_control?:             string
		pcr_period?:              number
		pcr_pid?:                 string
		pmt_interval?:            number
		pmt_pid?:                 string
		program_num?:             number
		rate_mode?:               string
		scte27_pids?:             string
		scte35_control?:          string
		scte35_pid?:              string
		segmentation_markers?:    string
		segmentation_style?:      string
		segmentation_time?:       number
		timed_metadata_behavior?: string
		timed_metadata_pid?:      string
		transport_stream_id?:     number
		video_pid?:               string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_nit_settings": close({
		network_id!:   number
		network_name!: string
		rep_interval?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_sdt_settings": close({
		output_sdt?:            string
		rep_interval?:          number
		service_name?:          string
		service_provider_name?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/container_settings/$defs/m2ts_settings/$defs/dvb_tdt_settings": close({
		rep_interval?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/destination": close({
		destination_ref_id!: string
	})

	_#defs: "/$defs/encoder_settings/$defs/output_groups/$defs/outputs/$defs/output_settings/$defs/udp_output_settings/$defs/fec_output_settings": close({
		column_depth?: number
		include_fec?:  string
		row_length?:   number
	})

	_#defs: "/$defs/encoder_settings/$defs/timecode_config": close({
		source!:         string
		sync_threshold?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions": close({
		codec_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings"]])
		height?:           number
		name!:             string
		respond_to_afd?:   string
		scaling_behavior?: string
		sharpness?:        number
		width?:            number
	})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings": close({
		frame_capture_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/frame_capture_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/frame_capture_settings"]])
		h264_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h264_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h264_settings"]])
		h265_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/frame_capture_settings": close({
		capture_interval?:       number
		capture_interval_units?: string
	})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h264_settings": close({
		adaptive_quantization?:   string
		afd_signaling?:           string
		bitrate?:                 number
		buf_fill_pct?:            number
		buf_size?:                number
		color_metadata?:          string
		entropy_encoding?:        string
		fixed_afd?:               string
		flicker_aq?:              string
		force_field_pictures?:    string
		framerate_control?:       string
		framerate_denominator?:   number
		framerate_numerator?:     number
		gop_b_reference?:         string
		gop_closed_cadence?:      number
		gop_num_b_frames?:        number
		gop_size?:                number
		gop_size_units?:          string
		level?:                   string
		look_ahead_rate_control?: string
		max_bitrate?:             number
		min_i_interval?:          number
		num_ref_frames?:          number
		par_control?:             string
		par_denominator?:         number
		par_numerator?:           number
		profile?:                 string
		quality_level?:           string
		qvbr_quality_level?:      number
		rate_control_mode?:       string
		filter_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h264_settings/$defs/filter_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h264_settings/$defs/filter_settings"]])
		scan_type?:           string
		scene_change_detect?: string
		slices?:              number
		softness?:            number
		spatial_aq?:          string
		subgop_length?:       string
		syntax?:              string
		temporal_aq?:         string
		timecode_insertion?:  string
	})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h264_settings/$defs/filter_settings": close({
		temporal_filter_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h264_settings/$defs/filter_settings/$defs/temporal_filter_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h264_settings/$defs/filter_settings/$defs/temporal_filter_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h264_settings/$defs/filter_settings/$defs/temporal_filter_settings": close({
		post_filter_sharpening?: string
		strength?:               string
	})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings": close({
		adaptive_quantization?:         string
		afd_signaling?:                 string
		alternative_transfer_function?: string
		bitrate!:                       number
		buf_size?:                      number
		color_metadata?:                string
		fixed_afd?:                     string
		flicker_aq?:                    string
		framerate_denominator!:         number
		framerate_numerator!:           number
		gop_closed_cadence?:            number
		gop_size?:                      number
		gop_size_units?:                string
		level?:                         string
		look_ahead_rate_control?:       string
		max_bitrate?:                   number
		min_i_interval?:                number
		min_qp?:                        number
		color_space_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings"]])
		filter_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/filter_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/filter_settings"]])
		mv_over_picture_boundaries?: string
		mv_temporal_predictor?:      string
		par_denominator?:            number
		par_numerator?:              number
		profile?:                    string
		qvbr_quality_level?:         number
		rate_control_mode?:          string
		timecode_burnin_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/timecode_burnin_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/timecode_burnin_settings"]])
		scan_type?:           string
		scene_change_detect?: string
		slices?:              number
		tier?:                string
		tile_height?:         number
		tile_padding?:        string
		tile_width?:          number
		timecode_insertion?:  string
		treeblock_size?:      string
	})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings": close({
		color_space_passthrough_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/color_space_passthrough_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/color_space_passthrough_settings"]])
		dolby_vision81_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/dolby_vision81_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/dolby_vision81_settings"]])
		hdr10_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/hdr10_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/hdr10_settings"]])
		rec601_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/rec601_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/rec601_settings"]])
		rec709_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/rec709_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/rec709_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/color_space_passthrough_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/dolby_vision81_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/hdr10_settings": close({
		max_cll?:  number
		max_fall?: number
	})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/rec601_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/color_space_settings/$defs/rec709_settings": close({})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/filter_settings": close({
		temporal_filter_settings?: matchN(1, [_#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/filter_settings/$defs/temporal_filter_settings", list.MaxItems(1) & [..._#defs."/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/filter_settings/$defs/temporal_filter_settings"]])
	})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/filter_settings/$defs/temporal_filter_settings": close({
		post_filter_sharpening?: string
		strength?:               string
	})

	_#defs: "/$defs/encoder_settings/$defs/video_descriptions/$defs/codec_settings/$defs/h265_settings/$defs/timecode_burnin_settings": close({
		prefix?:                    string
		timecode_burnin_font_size?: string
		timecode_burnin_position?:  string
	})

	_#defs: "/$defs/input_attachments/$defs/automatic_input_failover_settings": close({
		failover_condition?: matchN(1, [_#defs."/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition", [..._#defs."/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition"]])
		error_clear_time_msec?: number
		input_preference?:      string
		secondary_input_id!:    string
	})

	_#defs: "/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition": close({
		failover_condition_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition/$defs/failover_condition_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition/$defs/failover_condition_settings"]])
	})

	_#defs: "/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition/$defs/failover_condition_settings": close({
		audio_silence_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition/$defs/failover_condition_settings/$defs/audio_silence_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition/$defs/failover_condition_settings/$defs/audio_silence_settings"]])
		input_loss_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition/$defs/failover_condition_settings/$defs/input_loss_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition/$defs/failover_condition_settings/$defs/input_loss_settings"]])
		video_black_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition/$defs/failover_condition_settings/$defs/video_black_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition/$defs/failover_condition_settings/$defs/video_black_settings"]])
	})

	_#defs: "/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition/$defs/failover_condition_settings/$defs/audio_silence_settings": close({
		audio_selector_name!:          string
		audio_silence_threshold_msec?: number
	})

	_#defs: "/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition/$defs/failover_condition_settings/$defs/input_loss_settings": close({
		input_loss_threshold_msec?: number
	})

	_#defs: "/$defs/input_attachments/$defs/automatic_input_failover_settings/$defs/failover_condition/$defs/failover_condition_settings/$defs/video_black_settings": close({
		black_detect_threshold?:     number
		video_black_threshold_msec?: number
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings": close({
		deblock_filter?:            string
		denoise_filter?:            string
		filter_strength?:           number
		input_filter?:              string
		scte35_pid?:                number
		smpte2038_data_preference?: string
		audio_selector?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector", [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector"]])
		source_end_behavior?: string
		caption_selector?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector", [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector"]])
		network_input_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/network_input_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/network_input_settings"]])
		video_selector?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/video_selector", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/video_selector"]])
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/audio_selector": close({
		selector_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings"]])
		name!: string
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings": close({
		audio_hls_rendition_selection?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_hls_rendition_selection", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_hls_rendition_selection"]])
		audio_language_selection?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_language_selection", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_language_selection"]])
		audio_pid_selection?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_pid_selection", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_pid_selection"]])
		audio_track_selection?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_track_selection", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_track_selection"]])
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_hls_rendition_selection": close({
		group_id!: string
		name!:     string
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_language_selection": close({
		language_code!:             string
		language_selection_policy?: string
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_pid_selection": close({
		pid!: number
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_track_selection": close({
		dolby_e_decode?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_track_selection/$defs/dolby_e_decode", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_track_selection/$defs/dolby_e_decode"]])
		tracks?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_track_selection/$defs/tracks", [_, ...] & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_track_selection/$defs/tracks"]])
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_track_selection/$defs/dolby_e_decode": close({
		program_selection!: string
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/audio_selector/$defs/selector_settings/$defs/audio_track_selection/$defs/tracks": close({
		track!: number
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/caption_selector": close({
		selector_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings"]])
		language_code?: string
		name!:          string
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings": close({
		ancillary_source_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/ancillary_source_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/ancillary_source_settings"]])
		arib_source_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/arib_source_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/arib_source_settings"]])
		dvb_sub_source_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/dvb_sub_source_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/dvb_sub_source_settings"]])
		embedded_source_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/embedded_source_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/embedded_source_settings"]])
		scte20_source_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/scte20_source_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/scte20_source_settings"]])
		scte27_source_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/scte27_source_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/scte27_source_settings"]])
		teletext_source_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/teletext_source_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/teletext_source_settings"]])
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/ancillary_source_settings": close({
		source_ancillary_channel_number?: number
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/arib_source_settings": close({})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/dvb_sub_source_settings": close({
		ocr_language?: string
		pid?:          number
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/embedded_source_settings": close({
		convert_608_to_708?:        string
		scte20_detection?:          string
		source_608_channel_number?: number
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/scte20_source_settings": close({
		convert_608_to_708?:        string
		source_608_channel_number?: number
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/scte27_source_settings": close({
		ocr_language?: string
		pid?:          number
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/teletext_source_settings": close({
		output_rectangle?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/teletext_source_settings/$defs/output_rectangle", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/teletext_source_settings/$defs/output_rectangle"]])
		page_number?: string
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/caption_selector/$defs/selector_settings/$defs/teletext_source_settings/$defs/output_rectangle": close({
		height!:      number
		left_offset!: number
		top_offset!:  number
		width!:       number
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/network_input_settings": close({
		hls_input_settings?: matchN(1, [_#defs."/$defs/input_attachments/$defs/input_settings/$defs/network_input_settings/$defs/hls_input_settings", list.MaxItems(1) & [..._#defs."/$defs/input_attachments/$defs/input_settings/$defs/network_input_settings/$defs/hls_input_settings"]])
		server_validation?: string
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/network_input_settings/$defs/hls_input_settings": close({
		bandwidth?:       number
		buffer_segments?: number
		retries?:         number
		retry_interval?:  number
		scte35_source?:   string
	})

	_#defs: "/$defs/input_attachments/$defs/input_settings/$defs/video_selector": close({
		color_space?:       string
		color_space_usage?: string
	})
}
