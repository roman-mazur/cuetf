package res

import "list"

#elasticstack_elasticsearch_index_lifecycle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_index_lifecycle")
	id?:            string
	metadata?:      string
	modified_date?: string
	name!:          string
	cold?: #cold | list.MaxItems(1) & [...#cold]
	delete?: #delete | list.MaxItems(1) & [...#delete]
	elasticsearch_connection?: #elasticsearch_connection | list.MaxItems(1) & [...#elasticsearch_connection]
	frozen?: #frozen | list.MaxItems(1) & [...#frozen]
	hot?: #hot | list.MaxItems(1) & [...#hot]
	warm?: #warm | list.MaxItems(1) & [...#warm]

	#cold: {
		min_age?: string
		allocate?: #cold.#allocate | list.MaxItems(1) & [...#cold.#allocate]
		downsample?: #cold.#downsample | list.MaxItems(1) & [...#cold.#downsample]
		freeze?: #cold.#freeze | list.MaxItems(1) & [...#cold.#freeze]
		migrate?: #cold.#migrate | list.MaxItems(1) & [...#cold.#migrate]
		readonly?: #cold.#readonly | list.MaxItems(1) & [...#cold.#readonly]
		searchable_snapshot?: #cold.#searchable_snapshot | list.MaxItems(1) & [...#cold.#searchable_snapshot]
		set_priority?: #cold.#set_priority | list.MaxItems(1) & [...#cold.#set_priority]
		unfollow?: #cold.#unfollow | list.MaxItems(1) & [...#cold.#unfollow]

		#allocate: {
			exclude?:               string
			include?:               string
			number_of_replicas?:    number
			require?:               string
			total_shards_per_node?: number
		}

		#downsample: {
			fixed_interval!: string
			wait_timeout?:   string
		}

		#freeze: enabled?: bool

		#migrate: enabled?: bool

		#readonly: enabled?: bool

		#searchable_snapshot: {
			force_merge_index?:   bool
			snapshot_repository!: string
		}

		#set_priority: priority!: number

		#unfollow: enabled?: bool
	}

	#delete_1=#delete: {
		min_age?: string
		delete?: #delete_1.#delete | list.MaxItems(1) & [...#delete_1.#delete]
		wait_for_snapshot?: #delete_1.#wait_for_snapshot | list.MaxItems(1) & [...#delete_1.#wait_for_snapshot]

		#delete: delete_searchable_snapshot?: bool

		#wait_for_snapshot: policy!: string
	}

	#elasticsearch_connection: {
		api_key?:      string
		bearer_token?: string
		ca_data?:      string
		ca_file?:      string
		cert_data?:    string
		cert_file?:    string
		endpoints?: [...string]
		es_client_authentication?: string
		insecure?:                 bool
		key_data?:                 string
		key_file?:                 string
		password?:                 string
		username?:                 string
	}

	#frozen: {
		min_age?: string
		searchable_snapshot?: #frozen.#searchable_snapshot | list.MaxItems(1) & [...#frozen.#searchable_snapshot]

		#searchable_snapshot: {
			force_merge_index?:   bool
			snapshot_repository!: string
		}
	}

	#hot: {
		min_age?: string
		downsample?: #hot.#downsample | list.MaxItems(1) & [...#hot.#downsample]
		forcemerge?: #hot.#forcemerge | list.MaxItems(1) & [...#hot.#forcemerge]
		readonly?: #hot.#readonly | list.MaxItems(1) & [...#hot.#readonly]
		rollover?: #hot.#rollover | list.MaxItems(1) & [...#hot.#rollover]
		searchable_snapshot?: #hot.#searchable_snapshot | list.MaxItems(1) & [...#hot.#searchable_snapshot]
		set_priority?: #hot.#set_priority | list.MaxItems(1) & [...#hot.#set_priority]
		shrink?: #hot.#shrink | list.MaxItems(1) & [...#hot.#shrink]
		unfollow?: #hot.#unfollow | list.MaxItems(1) & [...#hot.#unfollow]

		#downsample: {
			fixed_interval!: string
			wait_timeout?:   string
		}

		#forcemerge: {
			index_codec?:      string
			max_num_segments!: number
		}

		#readonly: enabled?: bool

		#rollover: {
			max_age?:                string
			max_docs?:               number
			max_primary_shard_size?: string
			max_size?:               string
			min_age?:                string
			min_docs?:               number
			min_primary_shard_docs?: number
			min_primary_shard_size?: string
			min_size?:               string
		}

		#searchable_snapshot: {
			force_merge_index?:   bool
			snapshot_repository!: string
		}

		#set_priority: priority!: number

		#shrink: {
			allow_write_after_shrink?: bool
			max_primary_shard_size?:   string
			number_of_shards?:         number
		}

		#unfollow: enabled?: bool
	}

	#warm: {
		min_age?: string
		allocate?: #warm.#allocate | list.MaxItems(1) & [...#warm.#allocate]
		downsample?: #warm.#downsample | list.MaxItems(1) & [...#warm.#downsample]
		forcemerge?: #warm.#forcemerge | list.MaxItems(1) & [...#warm.#forcemerge]
		migrate?: #warm.#migrate | list.MaxItems(1) & [...#warm.#migrate]
		readonly?: #warm.#readonly | list.MaxItems(1) & [...#warm.#readonly]
		set_priority?: #warm.#set_priority | list.MaxItems(1) & [...#warm.#set_priority]
		shrink?: #warm.#shrink | list.MaxItems(1) & [...#warm.#shrink]
		unfollow?: #warm.#unfollow | list.MaxItems(1) & [...#warm.#unfollow]

		#allocate: {
			exclude?:               string
			include?:               string
			number_of_replicas?:    number
			require?:               string
			total_shards_per_node?: number
		}

		#downsample: {
			fixed_interval!: string
			wait_timeout?:   string
		}

		#forcemerge: {
			index_codec?:      string
			max_num_segments!: number
		}

		#migrate: enabled?: bool

		#readonly: enabled?: bool

		#set_priority: priority!: number

		#shrink: {
			allow_write_after_shrink?: bool
			max_primary_shard_size?:   string
			number_of_shards?:         number
		}

		#unfollow: enabled?: bool
	}
}
