package res

import "list"

#aws_securityhub_organization_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_organization_configuration")
	close({
		auto_enable!: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		auto_enable_standards?: string
		id?:                    string
		organization_configuration?: matchN(1, [#organization_configuration, list.MaxItems(1) & [...#organization_configuration]])
		timeouts?: #timeouts
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
