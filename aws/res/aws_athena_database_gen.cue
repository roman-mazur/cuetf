package res

import "list"

#aws_athena_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_athena_database")
	close({
		bucket?: string
		acl_configuration?: matchN(1, [#acl_configuration, list.MaxItems(1) & [...#acl_configuration]])
		encryption_configuration?: matchN(1, [#encryption_configuration, list.MaxItems(1) & [...#encryption_configuration]])
		comment?:               string
		expected_bucket_owner?: string
		force_destroy?:         bool
		id?:                    string
		name!:                  string
		properties?: [string]: string
		region?:    string
		workgroup?: string
	})

	#acl_configuration: close({
		s3_acl_option!: string
	})

	#encryption_configuration: close({
		encryption_option!: string
		kms_key?:           string
	})
}
