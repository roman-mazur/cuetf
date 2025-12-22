package res

import "list"

#aws_s3_bucket_intelligent_tiering_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3_bucket_intelligent_tiering_configuration")
	close({
		bucket!: string
		id?:     string
		name!:   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		status?: string
		filter?: matchN(1, [#filter, list.MaxItems(1) & [...#filter]])
		tiering!: matchN(1, [#tiering, [_, ...] & [...#tiering]])
	})

	#filter: close({
		prefix?: string
		tags?: [string]: string
	})

	#tiering: close({
		access_tier!: string
		days!:        number
	})
}
