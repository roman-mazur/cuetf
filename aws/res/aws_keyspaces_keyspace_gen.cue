package res

import "list"

#aws_keyspaces_keyspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_keyspaces_keyspace")
	close({
		replication_specification?: matchN(1, [#replication_specification, list.MaxItems(1) & [...#replication_specification]])
		arn?:    string
		id?:     string
		name!:   string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
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
