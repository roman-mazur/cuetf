package res

#aws_storagegateway_cached_iscsi_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_storagegateway_cached_iscsi_volume")
	arn?:                    string
	chap_enabled?:           bool
	gateway_arn!:            string
	id?:                     string
	kms_encrypted?:          bool
	kms_key?:                string
	lun_number?:             number
	network_interface_id!:   string
	network_interface_port?: number
	snapshot_id?:            string
	source_volume_arn?:      string
	tags?: [string]: string
	tags_all?: [string]: string
	target_arn?:           string
	target_name!:          string
	volume_arn?:           string
	volume_id?:            string
	volume_size_in_bytes!: number
}
