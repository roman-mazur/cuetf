package res

import "list"

#aws_medialive_multiplex: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_medialive_multiplex")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		arn?:    string
		availability_zones!: [...string]
		id?:              string
		name!:            string
		start_multiplex?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
		multiplex_settings?: matchN(1, [#multiplex_settings, list.MaxItems(1) & [...#multiplex_settings]])
		timeouts?: #timeouts
	})

	#multiplex_settings: close({
		maximum_video_buffer_delay_milliseconds?: number
		transport_stream_bitrate!:                number
		transport_stream_id!:                     number
		transport_stream_reserved_bitrate?:       number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
