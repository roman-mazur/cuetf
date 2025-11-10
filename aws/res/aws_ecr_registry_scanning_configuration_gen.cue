package res

import "list"

#aws_ecr_registry_scanning_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_registry_scanning_configuration")
	close({
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		registry_id?: string
		scan_type!:   string
		rule?: matchN(1, [#rule, list.MaxItems(100) & [...#rule]])
	})

	#rule: close({
		repository_filter!: matchN(1, [_#defs."/$defs/rule/$defs/repository_filter", [_, ...] & [..._#defs."/$defs/rule/$defs/repository_filter"]])
		scan_frequency!: string
	})

	_#defs: "/$defs/rule/$defs/repository_filter": close({
		filter!:      string
		filter_type!: string
	})
}
