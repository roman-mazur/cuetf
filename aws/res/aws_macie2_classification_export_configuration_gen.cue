package res

import "list"

#aws_macie2_classification_export_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_macie2_classification_export_configuration")
	id?: string
	s3_destination?: #s3_destination | list.MaxItems(1) & [...#s3_destination]

	#s3_destination: {
		bucket_name!: string
		key_prefix?:  string
		kms_key_arn!: string
	}
}
