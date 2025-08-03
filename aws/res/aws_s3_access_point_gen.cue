package res

import "list"

#aws_s3_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_access_point")
	close({
		account_id?: string
		alias?:      string
		public_access_block_configuration?: matchN(1, [#public_access_block_configuration, list.MaxItems(1) & [...#public_access_block_configuration]])
		arn?:               string
		bucket!:            string
		bucket_account_id?: string
		domain_name?:       string
		endpoints?: [string]: string
		vpc_configuration?: matchN(1, [#vpc_configuration, list.MaxItems(1) & [...#vpc_configuration]])
		has_public_access_policy?: bool
		id?:                       string
		name!:                     string
		network_origin?:           string
		policy?:                   string
		region?:                   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#public_access_block_configuration: close({
		block_public_acls?:       bool
		block_public_policy?:     bool
		ignore_public_acls?:      bool
		restrict_public_buckets?: bool
	})

	#vpc_configuration: close({
		vpc_id!: string
	})
}
