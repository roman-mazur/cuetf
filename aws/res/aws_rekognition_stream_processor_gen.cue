package res

#aws_rekognition_stream_processor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rekognition_stream_processor")
	close({
		// The identifier for your AWS Key Management Service key (AWS KMS
		// key). You can supply the Amazon Resource Name (ARN) of your
		// KMS key, the ID of your KMS key, an alias for your KMS key, or
		// an alias ARN.
		kms_key_id?: string

		// An identifier you assign to the stream processor.
		name!: string
		arn?:  string
		data_sharing_preference?: matchN(1, [#data_sharing_preference, [...#data_sharing_preference]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		input?: matchN(1, [#input, [...#input]])

		// The Amazon Resource Number (ARN) of the IAM role that allows
		// access to the stream processor.
		role_arn!: string
		notification_channel?: matchN(1, [#notification_channel, [...#notification_channel]])
		output?: matchN(1, [#output, [...#output]])
		regions_of_interest?: matchN(1, [#regions_of_interest, [...#regions_of_interest]])
		tags?: [string]: string
		settings?: matchN(1, [#settings, [...#settings]])
		timeouts?: #timeouts
		tags_all?: [string]: string
	})

	#data_sharing_preference: close({
		// Do you want to share data with Rekognition to improve model
		// performance.
		opt_in!: bool
	})

	#input: close({
		kinesis_video_stream?: matchN(1, [_#defs."/$defs/input/$defs/kinesis_video_stream", [..._#defs."/$defs/input/$defs/kinesis_video_stream"]])
	})

	#notification_channel: close({
		// The Amazon Resource Number (ARN) of the Amazon Amazon Simple
		// Notification Service topic to which Amazon Rekognition posts
		// the completion status.
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
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/input/$defs/kinesis_video_stream": close({
		// ARN of the Kinesis video stream stream that streams the source
		// video.
		arn!: string
	})

	_#defs: "/$defs/output/$defs/kinesis_data_stream": close({
		// ARN of the output Amazon Kinesis Data Streams stream.
		arn?: string
	})

	_#defs: "/$defs/output/$defs/s3_destination": close({
		// The name of the Amazon S3 bucket you want to associate with the
		// streaming video project.
		bucket?: string

		// The prefix value of the location within the bucket that you
		// want the information to be published to.
		key_prefix?: string
	})

	_#defs: "/$defs/regions_of_interest/$defs/bounding_box": close({
		// Height of the bounding box as a ratio of the overall image
		// height.
		height?: number

		// Left coordinate of the bounding box as a ratio of overall image
		// width.
		left?: number

		// Top coordinate of the bounding box as a ratio of overall image
		// height.
		top?: number

		// Width of the bounding box as a ratio of the overall image
		// width.
		width?: number
	})

	_#defs: "/$defs/regions_of_interest/$defs/polygon": close({
		// The value of the X coordinate for a point on a Polygon.
		x?: number

		// The value of the Y coordinate for a point on a Polygon.
		y?: number
	})

	_#defs: "/$defs/settings/$defs/connected_home": close({
		// Specifies what you want to detect in the video, such as people,
		// packages, or pets.
		labels?: [...string]

		// The minimum confidence required to label an object in the
		// video.
		min_confidence?: number
	})

	_#defs: "/$defs/settings/$defs/face_search": close({
		// The ID of a collection that contains faces that you want to
		// search for.
		collection_id!: string

		// Minimum face match confidence score that must be met to return
		// a result for a recognized face.
		face_match_threshold?: number
	})
}
