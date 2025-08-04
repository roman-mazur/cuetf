package res

import "list"

#aws_inspector2_organization_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_inspector2_organization_configuration")
	close({
		auto_enable?: matchN(1, [#auto_enable, list.MaxItems(1) & [_, ...] & [...#auto_enable]])
		timeouts?:                  #timeouts
		id?:                        string
		max_account_limit_reached?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#auto_enable: close({
		code_repository?: bool
		ec2!:             bool
		ecr!:             bool
		lambda?:          bool
		lambda_code?:     bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
