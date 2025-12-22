package res

import "list"

#aws_ecr_replication_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ecr_replication_configuration")
	close({
		replication_configuration?: matchN(1, [#replication_configuration, list.MaxItems(1) & [...#replication_configuration]])
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		registry_id?: string
	})

	#replication_configuration: close({
		rule!: matchN(1, [_#defs."/$defs/replication_configuration/$defs/rule", list.MaxItems(10) & [_, ...] & [..._#defs."/$defs/replication_configuration/$defs/rule"]])
	})

	_#defs: "/$defs/replication_configuration/$defs/rule": close({
		destination!: matchN(1, [_#defs."/$defs/replication_configuration/$defs/rule/$defs/destination", list.MaxItems(25) & [_, ...] & [..._#defs."/$defs/replication_configuration/$defs/rule/$defs/destination"]])
		repository_filter?: matchN(1, [_#defs."/$defs/replication_configuration/$defs/rule/$defs/repository_filter", list.MaxItems(100) & [..._#defs."/$defs/replication_configuration/$defs/rule/$defs/repository_filter"]])
	})

	_#defs: "/$defs/replication_configuration/$defs/rule/$defs/destination": close({
		region!:      string
		registry_id!: string
	})

	_#defs: "/$defs/replication_configuration/$defs/rule/$defs/repository_filter": close({
		filter!:      string
		filter_type!: string
	})
}
