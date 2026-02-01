package res

#aws_opensearch_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_opensearch_application")
	close({
		arn?: string
		app_config?: matchN(1, [#app_config, [...#app_config]])
		endpoint?: string
		id?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		kms_key_arn?: string
		data_source?: matchN(1, [#data_source, [...#data_source]])
		name!: string
		tags?: [string]: string
		iam_identity_center_options?: matchN(1, [#iam_identity_center_options, [...#iam_identity_center_options]])
		timeouts?: #timeouts
		tags_all?: [string]: string
	})

	#app_config: close({
		key?:   string
		value?: string
	})

	#data_source: close({
		data_source_arn?:         string
		data_source_description?: string
	})

	#iam_identity_center_options: close({
		enabled?:                                      bool
		iam_identity_center_application_arn?:          string
		iam_identity_center_instance_arn?:             string
		iam_role_for_identity_center_application_arn?: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})
}
