package data

aws_lambdamicrovms_image_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_lambdamicrovms_image_version")
	close({
		additional_os_capabilities?: [...string]
		base_image_arn?:     string
		base_image_version?: string
		build_role_arn?:     string
		code_artifact?: [...close({
			uri?: string
		})]
		cpu_configuration?: [...close({
			architecture?: string
		})]
		created_at?:  string
		description?: string
		egress_network_connectors?: [...string]
		environment_variables?: [string]: string
		hooks?: [...close({
			microvm_hooks?: [...close({
				resume?:                       string
				resume_timeout_in_seconds?:    number
				run?:                          string
				run_timeout_in_seconds?:       number
				suspend?:                      string
				suspend_timeout_in_seconds?:   number
				terminate?:                    string
				terminate_timeout_in_seconds?: number
			})]
			microvm_image_hooks?: [...close({
				ready?:                       string
				ready_timeout_in_seconds?:    number
				validate?:                    string
				validate_timeout_in_seconds?: number
			})]
			port?: number
		})]
		image_arn?:        string
		image_identifier!: string
		image_version!:    string
		logging?: [...close({
			cloudwatch?: [...close({
				log_group?:  string
				log_stream?: string
			})]
			disabled?: [...close({})]
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		resources?: [...close({
			minimum_memory_in_mib?: number
		})]
		state?:        string
		state_reason?: string
		status?:       string
		tags?: [string]: string
		updated_at?: string
	})
}
