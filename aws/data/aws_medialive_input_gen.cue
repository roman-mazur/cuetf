package data

#aws_medialive_input: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_medialive_input")
	close({
		arn?: string
		attached_channels?: [...string]
		destinations?: [...close({
			ip?:   string
			port?: string
			url?:  string
			vpc?: [...close({
				availability_zone?:    string
				network_interface_id?: string
			})]
		})]
		id!:          string
		input_class?: string
		input_devices?: [...close({
			id?: string
		})]
		input_partner_ids?: [...string]
		input_source_type?: string
		media_connect_flows?: [...close({
			flow_arn?: string
		})]
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		role_arn?: string
		security_groups?: [...string]
		sources?: [...close({
			password_param?: string
			url?:            string
			username?:       string
		})]
		state?: string
		tags?: [string]: string
		type?: string
	})
}
