package data

#aws_ssmincidents_response_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ssmincidents_response_plan")
	close({
		action?: [...close({
			ssm_automation?: [...close({
				document_name?:    string
				document_version?: string
				dynamic_parameters?: [string]: string
				parameter?: [...close({
					name?: string
					values?: [...string]
				})]
				role_arn?:       string
				target_account?: string
			})]
		})]
		arn!: string
		chat_channel?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		display_name?: string
		engagements?: [...string]
		id?: string
		incident_template?: [...close({
			dedupe_string?: string
			impact?:        number
			incident_tags?: [string]: string
			notification_target?: [...close({
				sns_topic_arn?: string
			})]
			summary?: string
			title?:   string
		})]
		integration?: [...close({
			pagerduty?: [...close({
				name?:       string
				secret_id?:  string
				service_id?: string
			})]
		})]
		name?: string
		tags?: [string]: string
	})
}
