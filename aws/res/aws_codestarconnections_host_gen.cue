package res

import "list"

#aws_codestarconnections_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codestarconnections_host")
	close({
		arn?:      string
		timeouts?: #timeouts
		vpc_configuration?: matchN(1, [#vpc_configuration, list.MaxItems(1) & [...#vpc_configuration]])
		id?:                string
		name!:              string
		provider_endpoint!: string
		provider_type!:     string
		region?:            string
		status?:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_configuration: close({
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		tls_certificate?: string
		vpc_id!:          string
	})
}
