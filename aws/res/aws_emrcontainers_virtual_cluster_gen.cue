package res

import "list"

#aws_emrcontainers_virtual_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emrcontainers_virtual_cluster")
	close({
		arn?:  string
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		container_provider?: matchN(1, [#container_provider, list.MaxItems(1) & [_, ...] & [...#container_provider]])
		timeouts?: #timeouts
	})

	#container_provider: close({
		info?: matchN(1, [_#defs."/$defs/container_provider/$defs/info", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/container_provider/$defs/info"]])
		id!:   string
		type!: string
	})

	#timeouts: close({
		delete?: string
	})

	_#defs: "/$defs/container_provider/$defs/info": close({
		eks_info?: matchN(1, [_#defs."/$defs/container_provider/$defs/info/$defs/eks_info", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/container_provider/$defs/info/$defs/eks_info"]])
	})

	_#defs: "/$defs/container_provider/$defs/info/$defs/eks_info": close({
		namespace?: string
	})
}
