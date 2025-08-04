package data

#cloudflare_schema_validation_operation_settings_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_schema_validation_operation_settings_list")
	close({
		max_items?: number
		result?: matchN(1, [close({
			mitigation_action?: string
			operation_id?:      string
		}), [...close({
			mitigation_action?: string
			operation_id?:      string
		})]])
		zone_id!: string
	})
}
