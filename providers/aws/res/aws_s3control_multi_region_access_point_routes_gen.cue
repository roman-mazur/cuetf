package res

#aws_s3control_multi_region_access_point_routes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3control_multi_region_access_point_routes")
	close({
		route?: matchN(1, [#route, [...#route]])
		account_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		mrap!:   string
	})

	#route: close({
		bucket!:                  string
		region!:                  string
		traffic_dial_percentage!: number
	})
}
