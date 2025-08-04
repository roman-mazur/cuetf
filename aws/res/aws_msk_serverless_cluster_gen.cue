package res

import "list"

#aws_msk_serverless_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_msk_serverless_cluster")
	close({
		arn?:                        string
		bootstrap_brokers_sasl_iam?: string
		cluster_name!:               string
		cluster_uuid?:               string
		client_authentication?: matchN(1, [#client_authentication, list.MaxItems(1) & [_, ...] & [...#client_authentication]])
		id?:     string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
		vpc_config?: matchN(1, [#vpc_config, [_, ...] & [...#vpc_config]])
	})

	#client_authentication: close({
		sasl?: matchN(1, [_#defs."/$defs/client_authentication/$defs/sasl", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/client_authentication/$defs/sasl"]])
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
		iam?: matchN(1, [_#defs."/$defs/client_authentication/$defs/sasl/$defs/iam", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/client_authentication/$defs/sasl/$defs/iam"]])
	})

	_#defs: "/$defs/client_authentication/$defs/sasl/$defs/iam": close({
		enabled!: bool
	})
}
