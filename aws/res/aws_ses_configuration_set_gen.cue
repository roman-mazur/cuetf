package res

import "list"

#aws_ses_configuration_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ses_configuration_set")
	close({
		arn?: string
		delivery_options?: matchN(1, [#delivery_options, list.MaxItems(1) & [...#delivery_options]])
		tracking_options?: matchN(1, [#tracking_options, list.MaxItems(1) & [...#tracking_options]])
		id?:                         string
		last_fresh_start?:           string
		name!:                       string
		region?:                     string
		reputation_metrics_enabled?: bool
		sending_enabled?:            bool
	})

	#delivery_options: close({
		tls_policy?: string
	})

	#tracking_options: close({
		custom_redirect_domain?: string
	})
}
