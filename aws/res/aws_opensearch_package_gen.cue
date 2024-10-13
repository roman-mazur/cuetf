package res

import "list"

#aws_opensearch_package: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opensearch_package")
	available_package_version?: string
	id?:                        string
	package_description?:       string
	package_id?:                string
	package_name!:              string
	package_type!:              string
	package_source?: #package_source | list.MaxItems(1) & [_, ...] & [...#package_source]

	#package_source: {
		s3_bucket_name!: string
		s3_key!:         string
	}
}
