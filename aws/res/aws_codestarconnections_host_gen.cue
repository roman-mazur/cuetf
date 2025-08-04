package res

import "list"

#aws_codestarconnections_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codestarconnections_host")
	close({
		arn?:      string
		timeouts?: #timeouts
		id?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		name!:              string
		provider_endpoint!: string
		provider_type!:     string
		vpc_configuration?: matchN(1, [#vpc_configuration, list.MaxItems(1) & [...#vpc_configuration]])
		status?: string
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
