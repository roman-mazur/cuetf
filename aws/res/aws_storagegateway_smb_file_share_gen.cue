package res

import "list"

#aws_storagegateway_smb_file_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_storagegateway_smb_file_share")
	access_based_enumeration?: bool
	admin_user_list?: [...string]
	arn?:                     string
	audit_destination_arn?:   string
	authentication?:          string
	bucket_region?:           string
	case_sensitivity?:        string
	default_storage_class?:   string
	file_share_name?:         string
	fileshare_id?:            string
	gateway_arn!:             string
	guess_mime_type_enabled?: bool
	id?:                      string
	invalid_user_list?: [...string]
	kms_encrypted?:       bool
	kms_key_arn?:         string
	location_arn!:        string
	notification_policy?: string
	object_acl?:          string
	oplocks_enabled?:     bool
	path?:                string
	read_only?:           bool
	requester_pays?:      bool
	role_arn!:            string
	smb_acl_enabled?:     bool
	tags?: [string]: string
	tags_all?: [string]: string
	valid_user_list?: [...string]
	vpc_endpoint_dns_name?: string
	cache_attributes?: #cache_attributes | list.MaxItems(1) & [...#cache_attributes]
	timeouts?: #timeouts

	#cache_attributes: cache_stale_timeout_in_seconds?: number

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
