package res

import "list"

#aws_s3_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3_access_point")
	account_id?:        string
	alias?:             string
	arn?:               string
	bucket:             string
	bucket_account_id?: string
	domain_name?:       string
	endpoints?: [string]: string
	has_public_access_policy?:          bool
	id?:                                string
	name:                               string
	network_origin?:                    string
	policy?:                            string
	public_access_block_configuration?: #public_access_block_configuration | list.MaxItems(1) & [...#public_access_block_configuration]
	vpc_configuration?:                 #vpc_configuration | list.MaxItems(1) & [...#vpc_configuration]

	#public_access_block_configuration: {
		block_public_acls?:       bool
		block_public_policy?:     bool
		ignore_public_acls?:      bool
		restrict_public_buckets?: bool
	}

	#vpc_configuration: vpc_id: string
}
