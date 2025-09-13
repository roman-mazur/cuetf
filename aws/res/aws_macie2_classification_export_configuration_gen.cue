package res

import "list"

#aws_macie2_classification_export_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_macie2_classification_export_configuration")
	close({
		s3_destination?: matchN(1, [#s3_destination, list.MaxItems(1) & [_, ...] & [...#s3_destination]])
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#s3_destination: close({
		bucket_name!: string
		key_prefix?:  string
		kms_key_arn!: string
	})
}
