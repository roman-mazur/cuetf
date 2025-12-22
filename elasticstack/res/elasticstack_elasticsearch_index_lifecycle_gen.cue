package res

import "list"

#elasticstack_elasticsearch_index_lifecycle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_index_lifecycle")
	close({
		// Internal identifier of the resource
		id?: string

		// Optional user metadata about the ilm policy. Must be valid JSON
		// document.
		metadata?: string

		// The DateTime of the last modification.
		modified_date?: string
		cold?: matchN(1, [#cold, list.MaxItems(1) & [...#cold]])
		delete?: matchN(1, [#delete, list.MaxItems(1) & [...#delete]])
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		frozen?: matchN(1, [#frozen, list.MaxItems(1) & [...#frozen]])

		// Identifier for the policy.
		name!: string
		hot?: matchN(1, [#hot, list.MaxItems(1) & [...#hot]])
		warm?: matchN(1, [#warm, list.MaxItems(1) & [...#warm]])
	})

	#cold: close({
		allocate?: matchN(1, [_#defs."/$defs/cold/$defs/allocate", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/allocate"]])

		// ILM moves indices through the lifecycle according to their age.
		// To control the timing of these transitions, you set a minimum
		// age for each phase.
		min_age?: string
		downsample?: matchN(1, [_#defs."/$defs/cold/$defs/downsample", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/downsample"]])
		freeze?: matchN(1, [_#defs."/$defs/cold/$defs/freeze", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/freeze"]])
		migrate?: matchN(1, [_#defs."/$defs/cold/$defs/migrate", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/migrate"]])
		readonly?: matchN(1, [_#defs."/$defs/cold/$defs/readonly", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/readonly"]])
		searchable_snapshot?: matchN(1, [_#defs."/$defs/cold/$defs/searchable_snapshot", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/searchable_snapshot"]])
		set_priority?: matchN(1, [_#defs."/$defs/cold/$defs/set_priority", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/set_priority"]])
		unfollow?: matchN(1, [_#defs."/$defs/cold/$defs/unfollow", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/unfollow"]])
	})

	#delete: close({
		delete?: matchN(1, [_#defs."/$defs/delete/$defs/delete", list.MaxItems(1) & [..._#defs."/$defs/delete/$defs/delete"]])
		wait_for_snapshot?: matchN(1, [_#defs."/$defs/delete/$defs/wait_for_snapshot", list.MaxItems(1) & [..._#defs."/$defs/delete/$defs/wait_for_snapshot"]])

		// ILM moves indices through the lifecycle according to their age.
		// To control the timing of these transitions, you set a minimum
		// age for each phase.
		min_age?: string
	})

	#elasticsearch_connection: close({
		// API Key to use for authentication to Elasticsearch
		api_key?: string

		// Bearer Token to use for authentication to Elasticsearch
		bearer_token?: string

		// PEM-encoded custom Certificate Authority certificate
		ca_data?: string

		// Path to a custom Certificate Authority certificate
		ca_file?: string

		// PEM encoded certificate for client auth
		cert_data?: string

		// Path to a file containing the PEM encoded certificate for
		// client auth
		cert_file?: string

		// A list of endpoints where the terraform provider will point to,
		// this must include the http(s) schema and port number.
		endpoints?: [...string]

		// ES Client Authentication field to be used with the JWT token
		es_client_authentication?: string

		// A list of headers to be sent with each request to
		// Elasticsearch.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// PEM encoded private key for client auth
		key_data?: string

		// Path to a file containing the PEM encoded private key for
		// client auth
		key_file?: string

		// Password to use for API authentication to Elasticsearch.
		password?: string

		// Username to use for API authentication to Elasticsearch.
		username?: string
	})

	#frozen: close({
		searchable_snapshot?: matchN(1, [_#defs."/$defs/frozen/$defs/searchable_snapshot", list.MaxItems(1) & [..._#defs."/$defs/frozen/$defs/searchable_snapshot"]])

		// ILM moves indices through the lifecycle according to their age.
		// To control the timing of these transitions, you set a minimum
		// age for each phase.
		min_age?: string
	})

	#hot: close({
		downsample?: matchN(1, [_#defs."/$defs/hot/$defs/downsample", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/downsample"]])

		// ILM moves indices through the lifecycle according to their age.
		// To control the timing of these transitions, you set a minimum
		// age for each phase.
		min_age?: string
		forcemerge?: matchN(1, [_#defs."/$defs/hot/$defs/forcemerge", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/forcemerge"]])
		readonly?: matchN(1, [_#defs."/$defs/hot/$defs/readonly", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/readonly"]])
		rollover?: matchN(1, [_#defs."/$defs/hot/$defs/rollover", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/rollover"]])
		searchable_snapshot?: matchN(1, [_#defs."/$defs/hot/$defs/searchable_snapshot", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/searchable_snapshot"]])
		set_priority?: matchN(1, [_#defs."/$defs/hot/$defs/set_priority", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/set_priority"]])
		shrink?: matchN(1, [_#defs."/$defs/hot/$defs/shrink", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/shrink"]])
		unfollow?: matchN(1, [_#defs."/$defs/hot/$defs/unfollow", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/unfollow"]])
	})

	#warm: close({
		allocate?: matchN(1, [_#defs."/$defs/warm/$defs/allocate", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/allocate"]])

		// ILM moves indices through the lifecycle according to their age.
		// To control the timing of these transitions, you set a minimum
		// age for each phase.
		min_age?: string
		downsample?: matchN(1, [_#defs."/$defs/warm/$defs/downsample", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/downsample"]])
		forcemerge?: matchN(1, [_#defs."/$defs/warm/$defs/forcemerge", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/forcemerge"]])
		migrate?: matchN(1, [_#defs."/$defs/warm/$defs/migrate", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/migrate"]])
		readonly?: matchN(1, [_#defs."/$defs/warm/$defs/readonly", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/readonly"]])
		set_priority?: matchN(1, [_#defs."/$defs/warm/$defs/set_priority", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/set_priority"]])
		shrink?: matchN(1, [_#defs."/$defs/warm/$defs/shrink", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/shrink"]])
		unfollow?: matchN(1, [_#defs."/$defs/warm/$defs/unfollow", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/unfollow"]])
	})

	_#defs: "/$defs/cold/$defs/allocate": close({
		// Assigns an index to nodes that have none of the specified
		// custom attributes. Must be valid JSON document.
		exclude?: string

		// Assigns an index to nodes that have at least one of the
		// specified custom attributes. Must be valid JSON document.
		include?: string

		// Number of replicas to assign to the index. Default: `0`
		number_of_replicas?: number

		// Assigns an index to nodes that have all of the specified custom
		// attributes. Must be valid JSON document.
		require?: string

		// The maximum number of shards for the index on a single
		// Elasticsearch node. Defaults to `-1` (unlimited). Supported
		// from Elasticsearch version **7.16**
		total_shards_per_node?: number
	})

	_#defs: "/$defs/cold/$defs/downsample": close({
		// Downsampling interval
		fixed_interval!: string

		// Downsampling interval
		wait_timeout?: string
	})

	_#defs: "/$defs/cold/$defs/freeze": close({
		// Controls whether ILM freezes the index.
		enabled?: bool
	})

	_#defs: "/$defs/cold/$defs/migrate": close({
		// Controls whether ILM automatically migrates the index during
		// this phase.
		enabled?: bool
	})

	_#defs: "/$defs/cold/$defs/readonly": close({
		// Controls whether ILM makes the index read-only.
		enabled?: bool
	})

	_#defs: "/$defs/cold/$defs/searchable_snapshot": close({
		// Force merges the managed index to one segment.
		force_merge_index?: bool

		// Repository used to store the snapshot.
		snapshot_repository!: string
	})

	_#defs: "/$defs/cold/$defs/set_priority": close({
		// The priority for the index. Must be 0 or greater.
		priority!: number
	})

	_#defs: "/$defs/cold/$defs/unfollow": close({
		// Controls whether ILM makes the follower index a regular one.
		enabled?: bool
	})

	_#defs: "/$defs/delete/$defs/delete": close({
		// Deletes the searchable snapshot created in a previous phase.
		delete_searchable_snapshot?: bool
	})

	_#defs: "/$defs/delete/$defs/wait_for_snapshot": close({
		// Name of the SLM policy that the delete action should wait for.
		policy!: string
	})

	_#defs: "/$defs/frozen/$defs/searchable_snapshot": close({
		// Force merges the managed index to one segment.
		force_merge_index?: bool

		// Repository used to store the snapshot.
		snapshot_repository!: string
	})

	_#defs: "/$defs/hot/$defs/downsample": close({
		// Downsampling interval
		fixed_interval!: string

		// Downsampling interval
		wait_timeout?: string
	})

	_#defs: "/$defs/hot/$defs/forcemerge": close({
		// Codec used to compress the document store.
		index_codec?: string

		// Number of segments to merge to. To fully merge the index, set
		// to 1.
		max_num_segments!: number
	})

	_#defs: "/$defs/hot/$defs/readonly": close({
		// Controls whether ILM makes the index read-only.
		enabled?: bool
	})

	_#defs: "/$defs/hot/$defs/rollover": close({
		// Triggers rollover after the maximum elapsed time from index
		// creation is reached.
		max_age?: string

		// Triggers rollover after the specified maximum number of
		// documents is reached.
		max_docs?: number

		// Triggers rollover when the largest primary shard in the index
		// reaches a certain number of documents. Supported from
		// Elasticsearch version **8.2**
		max_primary_shard_docs?: number

		// Triggers rollover when the largest primary shard in the index
		// reaches a certain size.
		max_primary_shard_size?: string

		// Triggers rollover when the index reaches a certain size.
		max_size?: string

		// Prevents rollover until after the minimum elapsed time from
		// index creation is reached. Supported from Elasticsearch
		// version **8.4**
		min_age?: string

		// Prevents rollover until after the specified minimum number of
		// documents is reached. Supported from Elasticsearch version
		// **8.4**
		min_docs?: number

		// Prevents rollover until the largest primary shard in the index
		// reaches a certain number of documents. Supported from
		// Elasticsearch version **8.4**
		min_primary_shard_docs?: number

		// Prevents rollover until the largest primary shard in the index
		// reaches a certain size. Supported from Elasticsearch version
		// **8.4**
		min_primary_shard_size?: string

		// Prevents rollover until the index reaches a certain size.
		min_size?: string
	})

	_#defs: "/$defs/hot/$defs/searchable_snapshot": close({
		// Force merges the managed index to one segment.
		force_merge_index?: bool

		// Repository used to store the snapshot.
		snapshot_repository!: string
	})

	_#defs: "/$defs/hot/$defs/set_priority": close({
		// The priority for the index. Must be 0 or greater.
		priority!: number
	})

	_#defs: "/$defs/hot/$defs/shrink": close({
		// If true, the shrunken index is made writable by removing the
		// write block.
		allow_write_after_shrink?: bool

		// The max primary shard size for the target index.
		max_primary_shard_size?: string

		// Number of shards to shrink to.
		number_of_shards?: number
	})

	_#defs: "/$defs/hot/$defs/unfollow": close({
		// Controls whether ILM makes the follower index a regular one.
		enabled?: bool
	})

	_#defs: "/$defs/warm/$defs/allocate": close({
		// Assigns an index to nodes that have none of the specified
		// custom attributes. Must be valid JSON document.
		exclude?: string

		// Assigns an index to nodes that have at least one of the
		// specified custom attributes. Must be valid JSON document.
		include?: string

		// Number of replicas to assign to the index. Default: `0`
		number_of_replicas?: number

		// Assigns an index to nodes that have all of the specified custom
		// attributes. Must be valid JSON document.
		require?: string

		// The maximum number of shards for the index on a single
		// Elasticsearch node. Defaults to `-1` (unlimited). Supported
		// from Elasticsearch version **7.16**
		total_shards_per_node?: number
	})

	_#defs: "/$defs/warm/$defs/downsample": close({
		// Downsampling interval
		fixed_interval!: string

		// Downsampling interval
		wait_timeout?: string
	})

	_#defs: "/$defs/warm/$defs/forcemerge": close({
		// Codec used to compress the document store.
		index_codec?: string

		// Number of segments to merge to. To fully merge the index, set
		// to 1.
		max_num_segments!: number
	})

	_#defs: "/$defs/warm/$defs/migrate": close({
		// Controls whether ILM automatically migrates the index during
		// this phase.
		enabled?: bool
	})

	_#defs: "/$defs/warm/$defs/readonly": close({
		// Controls whether ILM makes the index read-only.
		enabled?: bool
	})

	_#defs: "/$defs/warm/$defs/set_priority": close({
		// The priority for the index. Must be 0 or greater.
		priority!: number
	})

	_#defs: "/$defs/warm/$defs/shrink": close({
		// If true, the shrunken index is made writable by removing the
		// write block.
		allow_write_after_shrink?: bool

		// The max primary shard size for the target index.
		max_primary_shard_size?: string

		// Number of shards to shrink to.
		number_of_shards?: number
	})

	_#defs: "/$defs/warm/$defs/unfollow": close({
		// Controls whether ILM makes the follower index a regular one.
		enabled?: bool
	})
}
