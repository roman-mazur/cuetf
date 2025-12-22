package res

#aws_lambda_capacity_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lambda_capacity_provider")
	close({
		arn?: string
		permissions_config?: matchN(1, [#permissions_config, [...#permissions_config]])
		capacity_provider_scaling_config?: [...close({
			max_vcpu_count?: number
			scaling_mode?:   string
			scaling_policies?: [...close({
				predefined_metric_type?: string
				target_value?:           number
			})]
		})]
		instance_requirements?: [...close({
			allowed_instance_types?: [...string]
			architectures?: [...string]
			excluded_instance_types?: [...string]
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		timeouts?:    #timeouts
		kms_key_arn?: string
		name!:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_config?: matchN(1, [#vpc_config, [...#vpc_config]])
	})

	#permissions_config: close({
		capacity_provider_operator_role_arn!: string
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

	#vpc_config: close({
		security_group_ids!: [...string]
		subnet_ids!: [...string]
	})
}
