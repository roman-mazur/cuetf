package res

#aws_dataexchange_event_action: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_dataexchange_event_action")
	close({
		arn?:        string
		created_at?: string
		id?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		updated_at?: string
		action?: matchN(1, [#action, [...#action]])
		event?: matchN(1, [#event, [...#event]])
	})

	#action: close({
		export_revision_to_s3?: matchN(1, [_#defs."/$defs/action/$defs/export_revision_to_s3", [..._#defs."/$defs/action/$defs/export_revision_to_s3"]])
	})

	#event: close({
		revision_published?: matchN(1, [_#defs."/$defs/event/$defs/revision_published", [..._#defs."/$defs/event/$defs/revision_published"]])
	})

	_#defs: "/$defs/action/$defs/export_revision_to_s3": close({
		encryption?: matchN(1, [_#defs."/$defs/action/$defs/export_revision_to_s3/$defs/encryption", [..._#defs."/$defs/action/$defs/export_revision_to_s3/$defs/encryption"]])
		revision_destination?: matchN(1, [_#defs."/$defs/action/$defs/export_revision_to_s3/$defs/revision_destination", [..._#defs."/$defs/action/$defs/export_revision_to_s3/$defs/revision_destination"]])
	})

	_#defs: "/$defs/action/$defs/export_revision_to_s3/$defs/encryption": close({
		kms_key_arn?: string
		type?:        string
	})

	_#defs: "/$defs/action/$defs/export_revision_to_s3/$defs/revision_destination": close({
		bucket!:      string
		key_pattern?: string
	})

	_#defs: "/$defs/event/$defs/revision_published": close({
		data_set_id!: string
	})
}
