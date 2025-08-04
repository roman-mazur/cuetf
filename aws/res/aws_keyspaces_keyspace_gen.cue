package res

import "list"

#aws_keyspaces_keyspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_keyspaces_keyspace")
	close({
		arn?:  string
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		replication_specification?: matchN(1, [#replication_specification, list.MaxItems(1) & [...#replication_specification]])
		timeouts?: #timeouts
	})

	#replication_specification: close({
		region_list?: [...string]
		replication_strategy?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
