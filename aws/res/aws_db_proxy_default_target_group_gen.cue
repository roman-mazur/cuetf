package res

import "list"

#aws_db_proxy_default_target_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_proxy_default_target_group")
	close({
		arn?:           string
		db_proxy_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		name?:   string
		connection_pool_config?: matchN(1, [#connection_pool_config, list.MaxItems(1) & [...#connection_pool_config]])
		timeouts?: #timeouts
	})

	#connection_pool_config: close({
		connection_borrow_timeout?:    number
		init_query?:                   string
		max_connections_percent?:      number
		max_idle_connections_percent?: number
		session_pinning_filters?: [...string]
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
