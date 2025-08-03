package res

import "list"

#aws_s3_bucket_versioning: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_versioning")
	close({
		bucket!: string
		versioning_configuration?: matchN(1, [#versioning_configuration, list.MaxItems(1) & [_, ...] & [...#versioning_configuration]])
		expected_bucket_owner?: string
		id?:                    string
		mfa?:                   string
		region?:                string
	})

	#versioning_configuration: close({
		mfa_delete?: string
		status!:     string
	})
}
