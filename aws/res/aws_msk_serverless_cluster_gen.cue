package res

import "list"

#aws_msk_serverless_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_msk_serverless_cluster")
	close({
		arn?: string
		client_authentication!: matchN(1, [#client_authentication, list.MaxItems(1) & [_, ...] & [...#client_authentication]])
		bootstrap_brokers_sasl_iam?: string
		cluster_name!:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		timeouts?:     #timeouts
		cluster_uuid?: string
		id?:           string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_config!: matchN(1, [#vpc_config, [_, ...] & [...#vpc_config]])
	})

	#client_authentication: close({
		sasl!: matchN(1, [_#defs."/$defs/client_authentication/$defs/sasl", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/client_authentication/$defs/sasl"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	#vpc_config: close({
		security_group_ids?: [...string]
		subnet_ids!: [...string]
	})

	_#defs: "/$defs/client_authentication/$defs/sasl": close({
		iam!: matchN(1, [_#defs."/$defs/client_authentication/$defs/sasl/$defs/iam", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/client_authentication/$defs/sasl/$defs/iam"]])
	})

	_#defs: "/$defs/client_authentication/$defs/sasl/$defs/iam": close({
		enabled!: bool
	})
}
