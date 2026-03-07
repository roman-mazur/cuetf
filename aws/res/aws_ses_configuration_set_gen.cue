package res

import "list"

#aws_ses_configuration_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ses_configuration_set")
	close({
		delivery_options?: matchN(1, [#delivery_options, list.MaxItems(1) & [...#delivery_options]])
		tracking_options?: matchN(1, [#tracking_options, list.MaxItems(1) & [...#tracking_options]])
		arn?:              string
		id?:               string
		last_fresh_start?: string
		name!:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
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
