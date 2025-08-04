package res

import "list"

#aws_storagegateway_nfs_file_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_storagegateway_nfs_file_share")
	close({
		arn?:                   string
		audit_destination_arn?: string
		bucket_region?:         string
		client_list!: [...string]
		default_storage_class?: string
		file_share_name?:       string
		fileshare_id?:          string
		gateway_arn!:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		guess_mime_type_enabled?: bool
		id?:                      string
		kms_encrypted?:           bool
		kms_key_arn?:             string
		cache_attributes?: matchN(1, [#cache_attributes, list.MaxItems(1) & [...#cache_attributes]])
		nfs_file_share_defaults?: matchN(1, [#nfs_file_share_defaults, list.MaxItems(1) & [...#nfs_file_share_defaults]])
		location_arn!:        string
		notification_policy?: string
		object_acl?:          string
		path?:                string
		read_only?:           bool
		requester_pays?:      bool
		role_arn!:            string
		squash?:              string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_endpoint_dns_name?: string
		timeouts?:              #timeouts
	})

	#cache_attributes: close({
		cache_stale_timeout_in_seconds?: number
	})

	#nfs_file_share_defaults: close({
		directory_mode?: string
		file_mode?:      string
		group_id?:       string
		owner_id?:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
