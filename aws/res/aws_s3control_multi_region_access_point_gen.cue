package res

import "list"

#aws_s3control_multi_region_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3control_multi_region_access_point")
	account_id?:  string
	alias?:       string
	arn?:         string
	domain_name?: string
	id?:          string
	status?:      string
	details?:     #details | list.MaxItems(1) & [_, ...] & [...#details]
	timeouts?:    #timeouts

	#details: {
		name:                 string
		public_access_block?: #details.#public_access_block | list.MaxItems(1) & [...#details.#public_access_block]
		region?:              #details.#region | list.MaxItems(20) & [_, ...] & [...#details.#region]

		#public_access_block: {
			block_public_acls?:       bool
			block_public_policy?:     bool
			ignore_public_acls?:      bool
			restrict_public_buckets?: bool
		}

		#region: {
			bucket:             string
			bucket_account_id?: string
			region?:            string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
