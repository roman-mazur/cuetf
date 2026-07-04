package res

#aws_pinpointsmsvoicev2_event_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_pinpointsmsvoicev2_event_destination")
	close({
		cloudwatch_logs_destination?: matchN(1, [#cloudwatch_logs_destination, [...#cloudwatch_logs_destination]])
		kinesis_firehose_destination?: matchN(1, [#kinesis_firehose_destination, [...#kinesis_firehose_destination]])
		sns_destination?: matchN(1, [#sns_destination, [...#sns_destination]])

		// ARN of the parent configuration set.
		configuration_set_arn?: string

		// Name of the configuration set this event destination belongs to.
		configuration_set_name!: string

		// Whether the event destination is enabled. Defaults to `true`.
		enabled?: bool

		// Name of the event destination.
		event_destination_name!: string

		// Event types for which the destination receives records.
		matching_event_types!: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#cloudwatch_logs_destination: close({
		// ARN of the IAM role that End User Messaging SMS assumes to write to the log group.
		iam_role_arn!: string

		// ARN of the Amazon CloudWatch log group that receives the events.
		log_group_arn!: string
	})

	#kinesis_firehose_destination: close({
		// ARN of the Amazon Data Firehose delivery stream that receives the events.
		delivery_stream_arn!: string

		// ARN of the IAM role that End User Messaging SMS assumes to write to the delivery stream.
		iam_role_arn!: string
	})

	#sns_destination: close({
		// ARN of the Amazon SNS topic that receives the events.
		topic_arn!: string
	})
}
