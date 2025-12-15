package res

#aws_dataexchange_revision_assets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_dataexchange_revision_assets")
	close({
		arn?:         string
		comment?:     string
		created_at?:  string
		data_set_id!: string
		asset?: matchN(1, [#asset, [...#asset]])
		finalized?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		force_destroy?: bool
		id?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?:   #timeouts
		updated_at?: string
	})

	#asset: close({
		arn?: string
		create_s3_data_access_from_s3_bucket?: matchN(1, [_#defs."/$defs/asset/$defs/create_s3_data_access_from_s3_bucket", [..._#defs."/$defs/asset/$defs/create_s3_data_access_from_s3_bucket"]])
		created_at?: string
		id?:         string
		name?:       string
		updated_at?: string
		import_assets_from_s3?: matchN(1, [_#defs."/$defs/asset/$defs/import_assets_from_s3", [..._#defs."/$defs/asset/$defs/import_assets_from_s3"]])
		import_assets_from_signed_url?: matchN(1, [_#defs."/$defs/asset/$defs/import_assets_from_signed_url", [..._#defs."/$defs/asset/$defs/import_assets_from_signed_url"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string
	})

	_#defs: "/$defs/asset/$defs/create_s3_data_access_from_s3_bucket": close({
		asset_source?: matchN(1, [_#defs."/$defs/asset/$defs/create_s3_data_access_from_s3_bucket/$defs/asset_source", [..._#defs."/$defs/asset/$defs/create_s3_data_access_from_s3_bucket/$defs/asset_source"]])
		access_point_alias?: string
		access_point_arn?:   string
	})

	_#defs: "/$defs/asset/$defs/create_s3_data_access_from_s3_bucket/$defs/asset_source": close({
		kms_keys_to_grant?: matchN(1, [_#defs."/$defs/asset/$defs/create_s3_data_access_from_s3_bucket/$defs/asset_source/$defs/kms_keys_to_grant", [..._#defs."/$defs/asset/$defs/create_s3_data_access_from_s3_bucket/$defs/asset_source/$defs/kms_keys_to_grant"]])
		bucket!: string
		key_prefixes?: [...string]
		keys?: [...string]
	})

	_#defs: "/$defs/asset/$defs/create_s3_data_access_from_s3_bucket/$defs/asset_source/$defs/kms_keys_to_grant": close({
		kms_key_arn!: string
	})

	_#defs: "/$defs/asset/$defs/import_assets_from_s3": close({
		asset_source?: matchN(1, [_#defs."/$defs/asset/$defs/import_assets_from_s3/$defs/asset_source", [..._#defs."/$defs/asset/$defs/import_assets_from_s3/$defs/asset_source"]])
	})

	_#defs: "/$defs/asset/$defs/import_assets_from_s3/$defs/asset_source": close({
		bucket!: string
		key!:    string
	})

	_#defs: "/$defs/asset/$defs/import_assets_from_signed_url": close({
		filename!: string
	})
}
