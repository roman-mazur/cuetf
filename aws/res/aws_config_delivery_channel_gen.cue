package res

import "list"

#aws_config_delivery_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_config_delivery_channel")
	id?:             string
	name?:           string
	s3_bucket_name!: string
	s3_key_prefix?:  string
	s3_kms_key_arn?: string
	sns_topic_arn?:  string
	snapshot_delivery_properties?: #snapshot_delivery_properties | list.MaxItems(1) & [...#snapshot_delivery_properties]

	#snapshot_delivery_properties: delivery_frequency?: string
}
