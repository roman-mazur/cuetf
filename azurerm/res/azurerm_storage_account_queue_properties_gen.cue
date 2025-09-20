package res

import "list"

#azurerm_storage_account_queue_properties: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_account_queue_properties")
	close({
		cors_rule?: matchN(1, [#cors_rule, list.MaxItems(5) & [...#cors_rule]])
		hour_metrics?: matchN(1, [#hour_metrics, list.MaxItems(1) & [...#hour_metrics]])
		logging?: matchN(1, [#logging, list.MaxItems(1) & [...#logging]])
		minute_metrics?: matchN(1, [#minute_metrics, list.MaxItems(1) & [...#minute_metrics]])
		timeouts?:           #timeouts
		id?:                 string
		storage_account_id!: string
	})

	#cors_rule: close({
		allowed_headers!: [...string]
		allowed_methods!: [...string]
		allowed_origins!: [...string]
		exposed_headers!: [...string]
		max_age_in_seconds!: number
	})

	#hour_metrics: close({
		include_apis?:          bool
		retention_policy_days?: number
		version!:               string
	})

	#logging: close({
		delete!:                bool
		read!:                  bool
		retention_policy_days?: number
		version!:               string
		write!:                 bool
	})

	#minute_metrics: close({
		include_apis?:          bool
		retention_policy_days?: number
		version!:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
