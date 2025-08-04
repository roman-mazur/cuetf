package res

#aws_sns_sms_preferences: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sns_sms_preferences")
	close({
		default_sender_id?: string
		default_sms_type?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                                string
		delivery_status_iam_role_arn?:          string
		delivery_status_success_sampling_rate?: string
		id?:                                    string
		monthly_spend_limit?:                   number
		usage_report_s3_bucket?:                string
	})
}
