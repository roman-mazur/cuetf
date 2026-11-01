package res

aws_devopsagent_asset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_devopsagent_asset")
	close({
		content?: matchN(1, [#content, [...#content]])

		// Identifier of the Agent Space containing the asset. Changing this value requires replacement.
		agent_space_id!: string

		// Identifier of the asset.
		asset_id?: string

		// Type of asset. Changing this value requires replacement. See
		// https://docs.aws.amazon.com/devopsagent/latest/userguide/about-aws-devops-agent-managing-assets.html
		// for supported types and their metadata requirements.
		asset_type!: string

		// Creation timestamp in RFC 3339 format.
		created_at?: string

		// JSON document describing the asset. Required metadata fields depend on
		// asset_type. Updates replace supplied top-level fields and retain omitted
		// fields in AWS; removing a field from this document does not delete it from
		// AWS. Changes to metadata alone do not re-upload content.
		metadata?: string

		// Full JSON metadata returned by AWS, including retained fields and service-provided defaults.
		metadata_actual?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Last update timestamp in RFC 3339 format.
		updated_at?: string

		// Current asset version.
		version?: number
	})

	#content: close({
		file?: matchN(1, [_#defs."/$defs/content/$defs/file", [..._#defs."/$defs/content/$defs/file"]])
		source_url?: matchN(1, [_#defs."/$defs/content/$defs/source_url", [..._#defs."/$defs/content/$defs/source_url"]])
		zip?: matchN(1, [_#defs."/$defs/content/$defs/zip", [..._#defs."/$defs/content/$defs/zip"]])
	})

	_#defs: "/$defs/content/$defs/file": close({
		body?: matchN(1, [_#defs."/$defs/content/$defs/file/$defs/body", [..._#defs."/$defs/content/$defs/file/$defs/body"]])

		// JSON metadata for the file.
		metadata?: string

		// Path of the file within the asset.
		path!: string
	})

	_#defs: "/$defs/content/$defs/file/$defs/body": close({
		// Base64-encoded binary file content.
		bytes?: string

		// Text file content.
		text?: string
	})

	_#defs: "/$defs/content/$defs/source_url": close({
		// Source URL from which to import asset content.
		url!: string
	})

	_#defs: "/$defs/content/$defs/zip": close({
		// Base64-encoded ZIP archive. Use filebase64() to load a local ZIP file.
		zip_file!: string
	})
}
