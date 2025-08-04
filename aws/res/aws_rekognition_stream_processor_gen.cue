package res

#aws_rekognition_stream_processor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rekognition_stream_processor")
	close({
		arn?: string
		data_sharing_preference?: matchN(1, [#data_sharing_preference, [...#data_sharing_preference]])
		kms_key_id?: string
		name!:       string
		region?:     string
		role_arn!:   string
		input?: matchN(1, [#input, [...#input]])
		tags?: [string]:     string
		tags_all?: [string]: string
		notification_channel?: matchN(1, [#notification_channel, [...#notification_channel]])
		output?: matchN(1, [#output, [...#output]])
		regions_of_interest?: matchN(1, [#regions_of_interest, [...#regions_of_interest]])
		settings?: matchN(1, [#settings, [...#settings]])
		timeouts?: #timeouts
	})

	#data_sharing_preference: close({
		opt_in!: bool
	})

	#input: close({
		kinesis_video_stream?: matchN(1, [_#defs."/$defs/input/$defs/kinesis_video_stream", [..._#defs."/$defs/input/$defs/kinesis_video_stream"]])
	})

	#notification_channel: close({
		sns_topic_arn?: string
	})

	#output: close({
		kinesis_data_stream?: matchN(1, [_#defs."/$defs/output/$defs/kinesis_data_stream", [..._#defs."/$defs/output/$defs/kinesis_data_stream"]])
		s3_destination?: matchN(1, [_#defs."/$defs/output/$defs/s3_destination", [..._#defs."/$defs/output/$defs/s3_destination"]])
	})

	#regions_of_interest: close({
		bounding_box?: matchN(1, [_#defs."/$defs/regions_of_interest/$defs/bounding_box", [..._#defs."/$defs/regions_of_interest/$defs/bounding_box"]])
		polygon?: matchN(1, [_#defs."/$defs/regions_of_interest/$defs/polygon", [..._#defs."/$defs/regions_of_interest/$defs/polygon"]])
	})

	#settings: close({
		connected_home?: matchN(1, [_#defs."/$defs/settings/$defs/connected_home", [..._#defs."/$defs/settings/$defs/connected_home"]])
		face_search?: matchN(1, [_#defs."/$defs/settings/$defs/face_search", [..._#defs."/$defs/settings/$defs/face_search"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/input/$defs/kinesis_video_stream": close({
		arn!: string
	})

	_#defs: "/$defs/output/$defs/kinesis_data_stream": close({
		arn?: string
	})

	_#defs: "/$defs/output/$defs/s3_destination": close({
		bucket?:     string
		key_prefix?: string
	})

	_#defs: "/$defs/regions_of_interest/$defs/bounding_box": close({
		height?: number
		left?:   number
		top?:    number
		width?:  number
	})

	_#defs: "/$defs/regions_of_interest/$defs/polygon": close({
		x?: number
		y?: number
	})

	_#defs: "/$defs/settings/$defs/connected_home": close({
		labels?: [...string]
		min_confidence?: number
	})

	_#defs: "/$defs/settings/$defs/face_search": close({
		collection_id!:        string
		face_match_threshold?: number
	})
}
