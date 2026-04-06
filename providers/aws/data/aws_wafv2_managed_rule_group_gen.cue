package data

#aws_wafv2_managed_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_wafv2_managed_rule_group")
	close({
		available_labels?: [...close({
			name?: string
		})]
		capacity?: number
		consumed_labels?: [...close({
			name?: string
		})]
		label_namespace?: string
		name!:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		rules?: [...close({
			action?: [...close({
				allow?: [...close({
					custom_request_handling?: [...close({
						insert_header?: [...close({
							name?:  string
							value?: string
						})]
					})]
				})]
				block?: [...close({
					custom_response?: [...close({
						custom_response_body_key?: string
						response_code?:            number
						response_header?: [...close({
							name?:  string
							value?: string
						})]
					})]
				})]
				captcha?: [...close({
					custom_request_handling?: [...close({
						insert_header?: [...close({
							name?:  string
							value?: string
						})]
					})]
				})]
				challenge?: [...close({
					custom_request_handling?: [...close({
						insert_header?: [...close({
							name?:  string
							value?: string
						})]
					})]
				})]
				count?: [...close({
					custom_request_handling?: [...close({
						insert_header?: [...close({
							name?:  string
							value?: string
						})]
					})]
				})]
			})]
			name?: string
		})]
		scope!:         string
		sns_topic_arn?: string
		vendor_name!:   string
		version_name?:  string
	})
}
