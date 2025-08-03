package res

import "list"

#aws_inspector2_organization_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_inspector2_organization_configuration")
	close({
		id?:                        string
		max_account_limit_reached?: bool
		region?:                    string
		auto_enable?: matchN(1, [#auto_enable, list.MaxItems(1) & [_, ...] & [...#auto_enable]])
		timeouts?: #timeouts
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
