package res

import "list"

#aws_db_proxy_default_target_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_db_proxy_default_target_group")
	arn?:           string
	db_proxy_name!: string
	id?:            string
	name?:          string
	connection_pool_config?: #connection_pool_config | list.MaxItems(1) & [...#connection_pool_config]
	timeouts?: #timeouts

	#connection_pool_config: {
		connection_borrow_timeout?:    number
		init_query?:                   string
		max_connections_percent?:      number
		max_idle_connections_percent?: number
		session_pinning_filters?: [...string]
	}

	#timeouts: {
		create?: string
		update?: string
	}
}
