package res

import "list"

#aws_ebs_snapshot_import: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ebs_snapshot_import")
	close({
		arn?:                    string
		data_encryption_key_id?: string
		description?:            string
		encrypted?:              bool
		id?:                     string
		kms_key_id?:             string
		outpost_arn?:            string
		owner_alias?:            string
		owner_id?:               string
		permanent_restore?:      bool
		client_data?: matchN(1, [#client_data, list.MaxItems(1) & [...#client_data]])
		disk_container?: matchN(1, [#disk_container, list.MaxItems(1) & [_, ...] & [...#disk_container]])
		region?:       string
		role_name?:    string
		storage_tier?: string
		timeouts?:     #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		temporary_restore_days?: number
		volume_id?:              string
		volume_size?:            number
	})

	#client_data: close({
		comment?:      string
		upload_end?:   string
		upload_size?:  number
		upload_start?: string
	})

	#disk_container: close({
		user_bucket?: matchN(1, [_#defs."/$defs/disk_container/$defs/user_bucket", list.MaxItems(1) & [..._#defs."/$defs/disk_container/$defs/user_bucket"]])
		description?: string
		format!:      string
		url?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/disk_container/$defs/user_bucket": close({
		s3_bucket!: string
		s3_key!:    string
	})
}
