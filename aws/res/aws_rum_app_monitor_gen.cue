package res

import "list"

#aws_rum_app_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rum_app_monitor")
	close({
		app_monitor_id?: string
		arn?:            string
		cw_log_enabled?: bool
		cw_log_group?:   string
		app_monitor_configuration?: matchN(1, [#app_monitor_configuration, list.MaxItems(1) & [...#app_monitor_configuration]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		domain?: string
		domain_list?: [...string]
		id?:   string
		name!: string
		tags?: [string]: string
		custom_events?: matchN(1, [#custom_events, list.MaxItems(1) & [...#custom_events]])
		tags_all?: [string]: string
	})

	#app_monitor_configuration: close({
		allow_cookies?: bool
		enable_xray?:   bool
		excluded_pages?: [...string]
		favorite_pages?: [...string]
		guest_role_arn?:   string
		identity_pool_id?: string
		included_pages?: [...string]
		session_sample_rate?: number
		telemetries?: [...string]
	})

	#custom_events: close({
		status?: string
	})
}
