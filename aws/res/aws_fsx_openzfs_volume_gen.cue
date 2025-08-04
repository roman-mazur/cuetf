package res

import "list"

#aws_fsx_openzfs_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_openzfs_volume")
	close({
		arn?:                    string
		copy_tags_to_snapshots?: bool
		data_compression_type?:  string
		delete_volume_options?: [...string]
		id?: string
		nfs_exports?: matchN(1, [#nfs_exports, list.MaxItems(1) & [...#nfs_exports]])
		name!:             string
		parent_volume_id!: string
		read_only?:        bool
		record_size_kib?:  number
		region?:           string
		origin_snapshot?: matchN(1, [#origin_snapshot, list.MaxItems(1) & [...#origin_snapshot]])
		storage_capacity_quota_gib?:       number
		storage_capacity_reservation_gib?: number
		tags?: [string]:     string
		tags_all?: [string]: string
		volume_type?: string
		timeouts?:    #timeouts
		user_and_group_quotas?: matchN(1, [#user_and_group_quotas, list.MaxItems(100) & [...#user_and_group_quotas]])
	})

	#nfs_exports: close({
		client_configurations?: matchN(1, [_#defs."/$defs/nfs_exports/$defs/client_configurations", list.MaxItems(25) & [_, ...] & [..._#defs."/$defs/nfs_exports/$defs/client_configurations"]])
	})

	#origin_snapshot: close({
		copy_strategy!: string
		snapshot_arn!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#user_and_group_quotas: close({
		id!:                         number
		storage_capacity_quota_gib!: number
		type!:                       string
	})

	_#defs: "/$defs/nfs_exports/$defs/client_configurations": close({
		clients!: string
		options!: [...string]
	})
}
