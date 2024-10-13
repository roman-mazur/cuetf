package res

import "list"

#aws_storagegateway_nfs_file_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_storagegateway_nfs_file_share")
	arn?:                   string
	audit_destination_arn?: string
	bucket_region?:         string
	client_list!: [...string]
	default_storage_class?:   string
	file_share_name?:         string
	fileshare_id?:            string
	gateway_arn!:             string
	guess_mime_type_enabled?: bool
	id?:                      string
	kms_encrypted?:           bool
	kms_key_arn?:             string
	location_arn!:            string
	notification_policy?:     string
	object_acl?:              string
	path?:                    string
	read_only?:               bool
	requester_pays?:          bool
	role_arn!:                string
	squash?:                  string
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_endpoint_dns_name?: string
	cache_attributes?: #cache_attributes | list.MaxItems(1) & [...#cache_attributes]
	nfs_file_share_defaults?: #nfs_file_share_defaults | list.MaxItems(1) & [...#nfs_file_share_defaults]
	timeouts?: #timeouts

	#cache_attributes: cache_stale_timeout_in_seconds?: number

	#nfs_file_share_defaults: {
		directory_mode?: string
		file_mode?:      string
		group_id?:       string
		owner_id?:       string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
