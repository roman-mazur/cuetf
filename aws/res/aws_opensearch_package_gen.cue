package res

import "list"

#aws_opensearch_package: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearch_package")
	close({
		available_package_version?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		engine_version?:      string
		id?:                  string
		package_description?: string
		package_id?:          string
		package_name!:        string
		package_type!:        string
		package_source!: matchN(1, [#package_source, list.MaxItems(1) & [_, ...] & [...#package_source]])
	})

	#package_source: close({
		s3_bucket_name!: string
		s3_key!:         string
	})
}
