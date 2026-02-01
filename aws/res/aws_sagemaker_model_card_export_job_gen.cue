package res

#aws_sagemaker_model_card_export_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_model_card_export_job")
	close({
		export_artifacts?: [...close({
			s3_export_artifacts?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		model_card_export_job_arn?:  string
		model_card_export_job_name!: string
		model_card_name!:            string
		model_card_version?:         number
		output_config?: matchN(1, [#output_config, [...#output_config]])
		timeouts?: #timeouts
	})

	#output_config: close({
		s3_output_path!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string
	})
}
