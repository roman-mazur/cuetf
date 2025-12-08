package res

import "list"

#azurerm_monitor_metric_alert: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_monitor_metric_alert")
	close({
		auto_mitigate?: bool
		description?:   string
		enabled?:       bool

		// The location of the target pluginsdk. Required when using
		// subscription, resource group scope or multiple scopes.
		target_resource_location?: string
		frequency?:                string

		// The resource type (e.g. Microsoft.Compute/virtualMachines) of
		// the target pluginsdk. Required when using subscription,
		// resource group scope or multiple scopes.
		target_resource_type?: string
		id?:                   string
		name!:                 string
		resource_group_name!:  string
		action?: matchN(1, [#action, [...#action]])
		application_insights_web_test_location_availability_criteria?: matchN(1, [#application_insights_web_test_location_availability_criteria, list.MaxItems(1) & [...#application_insights_web_test_location_availability_criteria]])
		scopes!: [...string]
		severity?: number
		tags?: [string]: string
		criteria?: matchN(1, [#criteria, [...#criteria]])
		dynamic_criteria?: matchN(1, [#dynamic_criteria, list.MaxItems(1) & [...#dynamic_criteria]])
		window_size?: string
		timeouts?:    #timeouts
	})

	#action: close({
		action_group_id!: string
		webhook_properties?: [string]: string
	})

	#application_insights_web_test_location_availability_criteria: close({
		component_id!:          string
		failed_location_count!: number
		web_test_id!:           string
	})

	#criteria: close({
		dimension?: matchN(1, [_#defs."/$defs/criteria/$defs/dimension", [..._#defs."/$defs/criteria/$defs/dimension"]])
		aggregation!:            string
		metric_name!:            string
		metric_namespace!:       string
		operator!:               string
		skip_metric_validation?: bool
		threshold!:              number
	})

	#dynamic_criteria: close({
		dimension?: matchN(1, [_#defs."/$defs/dynamic_criteria/$defs/dimension", [..._#defs."/$defs/dynamic_criteria/$defs/dimension"]])
		aggregation!:              string
		alert_sensitivity!:        string
		evaluation_failure_count?: number
		evaluation_total_count?:   number
		ignore_data_before?:       string
		metric_name!:              string
		metric_namespace!:         string
		operator!:                 string
		skip_metric_validation?:   bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/criteria/$defs/dimension": close({
		name!:     string
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/dynamic_criteria/$defs/dimension": close({
		name!:     string
		operator!: string
		values!: [...string]
	})
}
