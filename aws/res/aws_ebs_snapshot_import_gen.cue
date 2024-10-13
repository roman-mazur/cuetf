package res

import "list"

#aws_ebs_snapshot_import: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ebs_snapshot_import")
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
	role_name?:              string
	storage_tier?:           string
	tags?: [string]:     string
	tags_all?: [string]: string
	temporary_restore_days?: number
	volume_id?:              string
	volume_size?:            number
	client_data?: #client_data | list.MaxItems(1) & [...#client_data]
	disk_container?: #disk_container | list.MaxItems(1) & [_, ...] & [...#disk_container]
	timeouts?: #timeouts

	#client_data: {
		comment?:      string
		upload_end?:   string
		upload_size?:  number
		upload_start?: string
	}

	#disk_container: {
		description?: string
		format!:      string
		url?:         string
		user_bucket?: #disk_container.#user_bucket | list.MaxItems(1) & [...#disk_container.#user_bucket]

		#user_bucket: {
			s3_bucket!: string
			s3_key!:    string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
