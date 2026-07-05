package data

aws_bedrock_foundation_model_agreement_offers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_bedrock_foundation_model_agreement_offers")
	close({
		model_id!:   string
		offer_type?: string
		offers?: [...close({
			offer_id?:    string
			offer_token?: string
			term_details?: [...close({
				legal_term?: [...close({
					url?: string
				})]
				support_term?: [...close({
					refund_policy_description?: string
				})]
				usage_based_pricing_term?: [...close({
					rate_card?: [...close({
						description?: string
						dimension?:   string
						price?:       string
						unit?:        string
					})]
				})]
				validity_term?: [...close({
					agreement_duration?: string
				})]
			})]
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
