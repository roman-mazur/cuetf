package res

import "list"

#aws_s3_bucket_ownership_controls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_ownership_controls")
	close({
		rule!: matchN(1, [#rule, list.MaxItems(1) & [_, ...] & [...#rule]])
		bucket!: string
		id?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#rule: close({
		object_ownership!: string
	})
}
