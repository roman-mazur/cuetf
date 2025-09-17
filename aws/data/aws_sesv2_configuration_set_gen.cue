package data

#aws_sesv2_configuration_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sesv2_configuration_set")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		arn?:                    string
		configuration_set_name!: string
		delivery_options?: [...close({
			max_delivery_seconds?: number
			sending_pool_name?:    string
			tls_policy?:           string
		})]
		id?: string
		reputation_options?: [...close({
			last_fresh_start?:           string
			reputation_metrics_enabled?: bool
		})]
		sending_options?: [...close({
			sending_enabled?: bool
		})]
		suppression_options?: [...close({
			suppressed_reasons?: [...string]
		})]
		tags?: [string]: string
		tracking_options?: [...close({
			custom_redirect_domain?: string
			https_policy?:           string
		})]
		vdm_options?: [...close({
			dashboard_options?: [...close({
				engagement_metrics?: string
			})]
			guardian_options?: [...close({
				optimized_shared_delivery?: string
			})]
		})]
	})
}
