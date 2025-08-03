package res

import "list"

#aws_opensearch_package: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearch_package")
	close({
		available_package_version?: string
		package_source?: matchN(1, [#package_source, list.MaxItems(1) & [_, ...] & [...#package_source]])
		id?:                  string
		package_description?: string
		package_id?:          string
		package_name!:        string
		package_type!:        string
		region?:              string
	})

	#package_source: close({
		s3_bucket_name!: string
		s3_key!:         string
	})
}
