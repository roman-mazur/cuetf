package res

import "list"

#aws_codestarconnections_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codestarconnections_host")
	arn?:               string
	id?:                string
	name!:              string
	provider_endpoint!: string
	provider_type!:     string
	status?:            string
	timeouts?:          #timeouts
	vpc_configuration?: #vpc_configuration | list.MaxItems(1) & [...#vpc_configuration]

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#vpc_configuration: {
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		tls_certificate?: string
		vpc_id!:          string
	}
}
