package res

#azurerm_cognitive_account_rai_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cognitive_account_rai_policy")
	close({
		content_filter?: matchN(1, [#content_filter, [_, ...] & [...#content_filter]])
		base_policy_name!:     string
		cognitive_account_id!: string
		id?:                   string
		mode?:                 string
		name!:                 string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#content_filter: close({
		block_enabled!:      bool
		filter_enabled!:     bool
		name!:               string
		severity_threshold!: string
		source!:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
