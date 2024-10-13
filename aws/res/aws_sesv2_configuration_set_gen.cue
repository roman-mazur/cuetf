package res

import "list"

#aws_sesv2_configuration_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sesv2_configuration_set")
	arn?:                    string
	configuration_set_name!: string
	id?:                     string
	tags?: [string]: string
	tags_all?: [string]: string
	delivery_options?: #delivery_options | list.MaxItems(1) & [...#delivery_options]
	reputation_options?: #reputation_options | list.MaxItems(1) & [...#reputation_options]
	sending_options?: #sending_options | list.MaxItems(1) & [...#sending_options]
	suppression_options?: #suppression_options | list.MaxItems(1) & [...#suppression_options]
	tracking_options?: #tracking_options | list.MaxItems(1) & [...#tracking_options]
	vdm_options?: #vdm_options | list.MaxItems(1) & [...#vdm_options]

	#delivery_options: {
		sending_pool_name?: string
		tls_policy?:        string
	}

	#reputation_options: {
		last_fresh_start?:           string
		reputation_metrics_enabled?: bool
	}

	#sending_options: sending_enabled?: bool

	#suppression_options: suppressed_reasons?: [...string]

	#tracking_options: custom_redirect_domain!: string

	#vdm_options: {
		dashboard_options?: #vdm_options.#dashboard_options | list.MaxItems(1) & [...#vdm_options.#dashboard_options]
		guardian_options?: #vdm_options.#guardian_options | list.MaxItems(1) & [...#vdm_options.#guardian_options]

		#dashboard_options: engagement_metrics?: string

		#guardian_options: optimized_shared_delivery?: string
	}
}
