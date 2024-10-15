package res

#aws_rekognition_stream_processor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rekognition_stream_processor")
	kms_key_id?:           string
	name!:                 string
	role_arn!:             string
	stream_processor_arn?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	data_sharing_preference?: #data_sharing_preference | [...#data_sharing_preference]
	input?: #input | [...#input]
	notification_channel?: #notification_channel | [...#notification_channel]
	output?: #output | [...#output]
	regions_of_interest?: #regions_of_interest | [...#regions_of_interest]
	settings?: #settings | [...#settings]
	timeouts?: #timeouts

	#data_sharing_preference: opt_in!: bool

	#input: {
		kinesis_video_stream?: #input.#kinesis_video_stream | [...#input.#kinesis_video_stream]

		#kinesis_video_stream: arn!: string
	}

	#notification_channel: sns_topic_arn?: string

	#output: {
		kinesis_data_stream?: #output.#kinesis_data_stream | [...#output.#kinesis_data_stream]
		s3_destination?: #output.#s3_destination | [...#output.#s3_destination]

		#kinesis_data_stream: arn?: string

		#s3_destination: {
			bucket?:     string
			key_prefix?: string
		}
	}

	#regions_of_interest: {
		bounding_box?: #regions_of_interest.#bounding_box
		polygon?: #regions_of_interest.#polygon | [...#regions_of_interest.#polygon]

		#bounding_box: {
			height?: number
			left?:   number
			top?:    number
			width?:  number
		}

		#polygon: {
			x?: number
			y?: number
		}
	}

	#settings: {
		connected_home?: #settings.#connected_home | [...#settings.#connected_home]
		face_search?: #settings.#face_search | [...#settings.#face_search]

		#connected_home: {
			labels?: [...string]
			min_confidence?: number
		}

		#face_search: {
			collection_id!:        string
			face_match_threshold?: number
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
