package res

import "list"

#aws_securityhub_organization_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_organization_configuration")
	close({
		organization_configuration?: matchN(1, [#organization_configuration, list.MaxItems(1) & [...#organization_configuration]])
		auto_enable!:           bool
		auto_enable_standards?: string
		id?:                    string
		region?:                string
		timeouts?:              #timeouts
	})

	#organization_configuration: close({
		configuration_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
