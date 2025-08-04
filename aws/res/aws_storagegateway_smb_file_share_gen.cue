package res

import "list"

#aws_storagegateway_smb_file_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_storagegateway_smb_file_share")
	close({
		access_based_enumeration?: bool
		admin_user_list?: [...string]
		arn?:                   string
		audit_destination_arn?: string
		authentication?:        string
		bucket_region?:         string
		case_sensitivity?:      string
		default_storage_class?: string
		file_share_name?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		fileshare_id?:            string
		gateway_arn!:             string
		guess_mime_type_enabled?: bool
		id?:                      string
		invalid_user_list?: [...string]
		kms_encrypted?: bool
		cache_attributes?: matchN(1, [#cache_attributes, list.MaxItems(1) & [...#cache_attributes]])
		timeouts?:            #timeouts
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
		tags?: [string]:     string
		tags_all?: [string]: string
		valid_user_list?: [...string]
		vpc_endpoint_dns_name?: string
	})

	#cache_attributes: close({
		cache_stale_timeout_in_seconds?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
