package res

import "list"

#aws_apprunner_vpc_ingress_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apprunner_vpc_ingress_connection")
	close({
		arn?:         string
		domain_name?: string
		id?:          string
		name!:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		service_arn!: string
		status?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
		ingress_vpc_configuration!: matchN(1, [#ingress_vpc_configuration, list.MaxItems(1) & [_, ...] & [...#ingress_vpc_configuration]])
	})

	#ingress_vpc_configuration: close({
		vpc_endpoint_id?: string
		vpc_id?:          string
	})
}
