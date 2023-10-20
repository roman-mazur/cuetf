package res

import "list"

#aws_fsx_openzfs_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_fsx_openzfs_volume")
	arn?:                    string
	copy_tags_to_snapshots?: bool
	data_compression_type?:  string
	delete_volume_options?: [...string]
	id?:                               string
	name:                              string
	parent_volume_id:                  string
	read_only?:                        bool
	record_size_kib?:                  number
	storage_capacity_quota_gib?:       number
	storage_capacity_reservation_gib?: number
	tags?: [string]: string
	tags_all?: [string]: string
	volume_type?:           string
	nfs_exports?:           #nfs_exports | list.MaxItems(1) & [...#nfs_exports]
	origin_snapshot?:       #origin_snapshot | list.MaxItems(1) & [...#origin_snapshot]
	timeouts?:              #timeouts
	user_and_group_quotas?: #user_and_group_quotas | list.MaxItems(100) & [...#user_and_group_quotas]

	#nfs_exports: {
		client_configurations?: #nfs_exports.#client_configurations | list.MaxItems(25) & [_, ...] & [...#nfs_exports.#client_configurations]

		#client_configurations: {
			clients: string
			options: [...string]
		}
	}

	#origin_snapshot: {
		copy_strategy: string
		snapshot_arn:  string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#user_and_group_quotas: {
		id:                         number
		storage_capacity_quota_gib: number
		type:                       string
	}
}
