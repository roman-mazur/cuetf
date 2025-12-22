package res

import "list"

#aws_athena_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_athena_database")
	close({
		bucket?:                string
		comment?:               string
		expected_bucket_owner?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		force_destroy?: bool
		id?:            string
		name!:          string
		properties?: [string]: string
		acl_configuration?: matchN(1, [#acl_configuration, list.MaxItems(1) & [...#acl_configuration]])
		encryption_configuration?: matchN(1, [#encryption_configuration, list.MaxItems(1) & [...#encryption_configuration]])
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
