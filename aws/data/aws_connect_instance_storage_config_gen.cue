package data

#aws_connect_instance_storage_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_connect_instance_storage_config")
	close({
		association_id!: string
		id?:             string
		instance_id!:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		resource_type!: string
		storage_config?: [...close({
			kinesis_firehose_config?: [...close({
				firehose_arn?: string
			})]
			kinesis_stream_config?: [...close({
				stream_arn?: string
			})]
			kinesis_video_stream_config?: [...close({
				encryption_config?: [...close({
					encryption_type?: string
					key_id?:          string
				})]
				prefix?:                 string
				retention_period_hours?: number
			})]
			s3_config?: [...close({
				bucket_name?:   string
				bucket_prefix?: string
				encryption_config?: [...close({
					encryption_type?: string
					key_id?:          string
				})]
			})]
			storage_type?: string
		})]
	})
}
