package res

import "list"

#aws_s3control_multi_region_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_multi_region_access_point")
	close({
		account_id?: string
		details?: matchN(1, [#details, list.MaxItems(1) & [_, ...] & [...#details]])
		timeouts?:    #timeouts
		alias?:       string
		arn?:         string
		domain_name?: string
		id?:          string
		region?:      string
		status?:      string
	})

	#details: close({
		name!: string
		public_access_block?: matchN(1, [_#defs."/$defs/details/$defs/public_access_block", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/public_access_block"]])
		region?: matchN(1, [_#defs."/$defs/details/$defs/region", list.MaxItems(20) & [_, ...] & [..._#defs."/$defs/details/$defs/region"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/details/$defs/public_access_block": close({
		block_public_acls?:       bool
		block_public_policy?:     bool
		ignore_public_acls?:      bool
		restrict_public_buckets?: bool
	})

	_#defs: "/$defs/details/$defs/region": close({
		bucket!:            string
		bucket_account_id?: string
		region?:            string
	})
}
