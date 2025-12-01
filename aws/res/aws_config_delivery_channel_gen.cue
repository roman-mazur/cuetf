package res

import "list"

#aws_config_delivery_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_config_delivery_channel")
	close({
		id?:   string
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		s3_bucket_name!: string
		s3_key_prefix?:  string
		s3_kms_key_arn?: string
		sns_topic_arn?:  string
		snapshot_delivery_properties?: matchN(1, [#snapshot_delivery_properties, list.MaxItems(1) & [...#snapshot_delivery_properties]])
	})

	#snapshot_delivery_properties: close({
		delivery_frequency?: string
	})
}
