package res

import "list"

#aws_s3_bucket_versioning: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3_bucket_versioning")
	close({
		bucket!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		mfa?:    string
		versioning_configuration!: matchN(1, [#versioning_configuration, list.MaxItems(1) & [_, ...] & [...#versioning_configuration]])
	})

	#versioning_configuration: close({
		mfa_delete?: string
		status!:     string
	})
}
