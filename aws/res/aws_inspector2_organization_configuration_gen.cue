package res

import "list"

#aws_inspector2_organization_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_inspector2_organization_configuration")
	id?:                        string
	max_account_limit_reached?: bool
	auto_enable?:               #auto_enable | list.MaxItems(1) & [_, ...] & [...#auto_enable]
	timeouts?:                  #timeouts

	#auto_enable: {
		ec2:     bool
		ecr:     bool
		lambda?: bool
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
