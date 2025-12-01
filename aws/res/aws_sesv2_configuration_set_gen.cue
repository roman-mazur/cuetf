package res

import "list"

#aws_sesv2_configuration_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sesv2_configuration_set")
	close({
		arn?:                    string
		configuration_set_name!: string
		id?:                     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		delivery_options?: matchN(1, [#delivery_options, list.MaxItems(1) & [...#delivery_options]])
		reputation_options?: matchN(1, [#reputation_options, list.MaxItems(1) & [...#reputation_options]])
		sending_options?: matchN(1, [#sending_options, list.MaxItems(1) & [...#sending_options]])
		suppression_options?: matchN(1, [#suppression_options, list.MaxItems(1) & [...#suppression_options]])
		tracking_options?: matchN(1, [#tracking_options, list.MaxItems(1) & [...#tracking_options]])
		vdm_options?: matchN(1, [#vdm_options, list.MaxItems(1) & [...#vdm_options]])
	})

	#delivery_options: close({
		max_delivery_seconds?: number
		sending_pool_name?:    string
		tls_policy?:           string
	})

	#reputation_options: close({
		last_fresh_start?:           string
		reputation_metrics_enabled?: bool
	})

	#sending_options: close({
		sending_enabled?: bool
	})

	#suppression_options: close({
		suppressed_reasons?: [...string]
	})

	#tracking_options: close({
		custom_redirect_domain!: string
		https_policy?:           string
	})

	#vdm_options: close({
		dashboard_options?: matchN(1, [_#defs."/$defs/vdm_options/$defs/dashboard_options", list.MaxItems(1) & [..._#defs."/$defs/vdm_options/$defs/dashboard_options"]])
		guardian_options?: matchN(1, [_#defs."/$defs/vdm_options/$defs/guardian_options", list.MaxItems(1) & [..._#defs."/$defs/vdm_options/$defs/guardian_options"]])
	})

	_#defs: "/$defs/vdm_options/$defs/dashboard_options": close({
		engagement_metrics?: string
	})

	_#defs: "/$defs/vdm_options/$defs/guardian_options": close({
		optimized_shared_delivery?: string
	})
}
