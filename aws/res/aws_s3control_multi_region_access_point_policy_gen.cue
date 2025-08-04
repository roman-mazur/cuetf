package res

import "list"

#aws_s3control_multi_region_access_point_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_multi_region_access_point_policy")
	close({
		account_id?:  string
		established?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		id?:       string
		proposed?: string
		details?: matchN(1, [#details, list.MaxItems(1) & [_, ...] & [...#details]])
		timeouts?: #timeouts
	})

	#details: close({
		name!:   string
		policy!: string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
