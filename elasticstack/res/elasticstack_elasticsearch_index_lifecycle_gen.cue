package res

import "list"

#elasticstack_elasticsearch_index_lifecycle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_index_lifecycle")
	close({
		cold?: matchN(1, [#cold, list.MaxItems(1) & [...#cold]])
		id?:            string
		metadata?:      string
		modified_date?: string
		name!:          string
		delete?: matchN(1, [#delete, list.MaxItems(1) & [...#delete]])
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		frozen?: matchN(1, [#frozen, list.MaxItems(1) & [...#frozen]])
		hot?: matchN(1, [#hot, list.MaxItems(1) & [...#hot]])
		warm?: matchN(1, [#warm, list.MaxItems(1) & [...#warm]])
	})

	#cold: close({
		allocate?: matchN(1, [_#defs."/$defs/cold/$defs/allocate", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/allocate"]])
		downsample?: matchN(1, [_#defs."/$defs/cold/$defs/downsample", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/downsample"]])
		freeze?: matchN(1, [_#defs."/$defs/cold/$defs/freeze", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/freeze"]])
		migrate?: matchN(1, [_#defs."/$defs/cold/$defs/migrate", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/migrate"]])
		readonly?: matchN(1, [_#defs."/$defs/cold/$defs/readonly", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/readonly"]])
		searchable_snapshot?: matchN(1, [_#defs."/$defs/cold/$defs/searchable_snapshot", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/searchable_snapshot"]])
		set_priority?: matchN(1, [_#defs."/$defs/cold/$defs/set_priority", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/set_priority"]])
		unfollow?: matchN(1, [_#defs."/$defs/cold/$defs/unfollow", list.MaxItems(1) & [..._#defs."/$defs/cold/$defs/unfollow"]])
		min_age?: string
	})

	#delete: close({
		delete?: matchN(1, [_#defs."/$defs/delete/$defs/delete", list.MaxItems(1) & [..._#defs."/$defs/delete/$defs/delete"]])
		wait_for_snapshot?: matchN(1, [_#defs."/$defs/delete/$defs/wait_for_snapshot", list.MaxItems(1) & [..._#defs."/$defs/delete/$defs/wait_for_snapshot"]])
		min_age?: string
	})

	#elasticsearch_connection: close({
		api_key?:      string
		bearer_token?: string
		ca_data?:      string
		ca_file?:      string
		cert_data?:    string
		cert_file?:    string
		endpoints?: [...string]
		es_client_authentication?: string
		headers?: [string]: string
		insecure?: bool
		key_data?: string
		key_file?: string
		password?: string
		username?: string
	})

	#frozen: close({
		searchable_snapshot?: matchN(1, [_#defs."/$defs/frozen/$defs/searchable_snapshot", list.MaxItems(1) & [..._#defs."/$defs/frozen/$defs/searchable_snapshot"]])
		min_age?: string
	})

	#hot: close({
		downsample?: matchN(1, [_#defs."/$defs/hot/$defs/downsample", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/downsample"]])
		forcemerge?: matchN(1, [_#defs."/$defs/hot/$defs/forcemerge", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/forcemerge"]])
		readonly?: matchN(1, [_#defs."/$defs/hot/$defs/readonly", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/readonly"]])
		rollover?: matchN(1, [_#defs."/$defs/hot/$defs/rollover", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/rollover"]])
		searchable_snapshot?: matchN(1, [_#defs."/$defs/hot/$defs/searchable_snapshot", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/searchable_snapshot"]])
		set_priority?: matchN(1, [_#defs."/$defs/hot/$defs/set_priority", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/set_priority"]])
		shrink?: matchN(1, [_#defs."/$defs/hot/$defs/shrink", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/shrink"]])
		unfollow?: matchN(1, [_#defs."/$defs/hot/$defs/unfollow", list.MaxItems(1) & [..._#defs."/$defs/hot/$defs/unfollow"]])
		min_age?: string
	})

	#warm: close({
		allocate?: matchN(1, [_#defs."/$defs/warm/$defs/allocate", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/allocate"]])
		downsample?: matchN(1, [_#defs."/$defs/warm/$defs/downsample", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/downsample"]])
		forcemerge?: matchN(1, [_#defs."/$defs/warm/$defs/forcemerge", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/forcemerge"]])
		migrate?: matchN(1, [_#defs."/$defs/warm/$defs/migrate", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/migrate"]])
		readonly?: matchN(1, [_#defs."/$defs/warm/$defs/readonly", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/readonly"]])
		set_priority?: matchN(1, [_#defs."/$defs/warm/$defs/set_priority", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/set_priority"]])
		shrink?: matchN(1, [_#defs."/$defs/warm/$defs/shrink", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/shrink"]])
		unfollow?: matchN(1, [_#defs."/$defs/warm/$defs/unfollow", list.MaxItems(1) & [..._#defs."/$defs/warm/$defs/unfollow"]])
		min_age?: string
	})

	_#defs: "/$defs/cold/$defs/allocate": close({
		exclude?:               string
		include?:               string
		number_of_replicas?:    number
		require?:               string
		total_shards_per_node?: number
	})

	_#defs: "/$defs/cold/$defs/downsample": close({
		fixed_interval!: string
		wait_timeout?:   string
	})

	_#defs: "/$defs/cold/$defs/freeze": close({
		enabled?: bool
	})

	_#defs: "/$defs/cold/$defs/migrate": close({
		enabled?: bool
	})

	_#defs: "/$defs/cold/$defs/readonly": close({
		enabled?: bool
	})

	_#defs: "/$defs/cold/$defs/searchable_snapshot": close({
		force_merge_index?:   bool
		snapshot_repository!: string
	})

	_#defs: "/$defs/cold/$defs/set_priority": close({
		priority!: number
	})

	_#defs: "/$defs/cold/$defs/unfollow": close({
		enabled?: bool
	})

	_#defs: "/$defs/delete/$defs/delete": close({
		delete_searchable_snapshot?: bool
	})

	_#defs: "/$defs/delete/$defs/wait_for_snapshot": close({
		policy!: string
	})

	_#defs: "/$defs/frozen/$defs/searchable_snapshot": close({
		force_merge_index?:   bool
		snapshot_repository!: string
	})

	_#defs: "/$defs/hot/$defs/downsample": close({
		fixed_interval!: string
		wait_timeout?:   string
	})

	_#defs: "/$defs/hot/$defs/forcemerge": close({
		index_codec?:      string
		max_num_segments!: number
	})

	_#defs: "/$defs/hot/$defs/readonly": close({
		enabled?: bool
	})

	_#defs: "/$defs/hot/$defs/rollover": close({
		max_age?:                string
		max_docs?:               number
		max_primary_shard_docs?: number
		max_primary_shard_size?: string
		max_size?:               string
		min_age?:                string
		min_docs?:               number
		min_primary_shard_docs?: number
		min_primary_shard_size?: string
		min_size?:               string
	})

	_#defs: "/$defs/hot/$defs/searchable_snapshot": close({
		force_merge_index?:   bool
		snapshot_repository!: string
	})

	_#defs: "/$defs/hot/$defs/set_priority": close({
		priority!: number
	})

	_#defs: "/$defs/hot/$defs/shrink": close({
		allow_write_after_shrink?: bool
		max_primary_shard_size?:   string
		number_of_shards?:         number
	})

	_#defs: "/$defs/hot/$defs/unfollow": close({
		enabled?: bool
	})

	_#defs: "/$defs/warm/$defs/allocate": close({
		exclude?:               string
		include?:               string
		number_of_replicas?:    number
		require?:               string
		total_shards_per_node?: number
	})

	_#defs: "/$defs/warm/$defs/downsample": close({
		fixed_interval!: string
		wait_timeout?:   string
	})

	_#defs: "/$defs/warm/$defs/forcemerge": close({
		index_codec?:      string
		max_num_segments!: number
	})

	_#defs: "/$defs/warm/$defs/migrate": close({
		enabled?: bool
	})

	_#defs: "/$defs/warm/$defs/readonly": close({
		enabled?: bool
	})

	_#defs: "/$defs/warm/$defs/set_priority": close({
		priority!: number
	})

	_#defs: "/$defs/warm/$defs/shrink": close({
		allow_write_after_shrink?: bool
		max_primary_shard_size?:   string
		number_of_shards?:         number
	})

	_#defs: "/$defs/warm/$defs/unfollow": close({
		enabled?: bool
	})
}
