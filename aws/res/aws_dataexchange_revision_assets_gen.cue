package res

#aws_dataexchange_revision_assets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dataexchange_revision_assets")
	close({
		arn?:           string
		comment?:       string
		created_at?:    string
		data_set_id!:   string
		finalized?:     bool
		force_destroy?: bool
		asset?: matchN(1, [#asset, [...#asset]])
		id?:       string
		region?:   string
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
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
