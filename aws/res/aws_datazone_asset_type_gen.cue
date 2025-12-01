package res

#aws_datazone_asset_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_datazone_asset_type")
	close({
		created_at?: string
		created_by?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		description?:               string
		domain_identifier!:         string
		name!:                      string
		owning_project_identifier!: string
		revision?:                  string
		forms_input?: matchN(1, [#forms_input, [...#forms_input]])
		timeouts?: #timeouts
	})

	#forms_input: close({
		map_block_key!:   string
		required?:        bool
		type_identifier!: string
		type_revision!:   string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string
	})
}
