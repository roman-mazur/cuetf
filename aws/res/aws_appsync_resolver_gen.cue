package res

import "list"

#aws_appsync_resolver: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appsync_resolver")
	close({
		api_id!: string
		caching_config?: matchN(1, [#caching_config, list.MaxItems(1) & [...#caching_config]])
		arn?:         string
		code?:        string
		data_source?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		field!:  string
		id?:     string
		pipeline_config?: matchN(1, [#pipeline_config, list.MaxItems(1) & [...#pipeline_config]])
		kind?:              string
		max_batch_size?:    number
		request_template?:  string
		response_template?: string
		type!:              string
		runtime?: matchN(1, [#runtime, list.MaxItems(1) & [...#runtime]])
		sync_config?: matchN(1, [#sync_config, list.MaxItems(1) & [...#sync_config]])
	})

	#caching_config: close({
		caching_keys?: [...string]
		ttl?: number
	})

	#pipeline_config: close({
		functions?: [...string]
	})

	#runtime: close({
		name!:            string
		runtime_version!: string
	})

	#sync_config: close({
		lambda_conflict_handler_config?: matchN(1, [_#defs."/$defs/sync_config/$defs/lambda_conflict_handler_config", list.MaxItems(1) & [..._#defs."/$defs/sync_config/$defs/lambda_conflict_handler_config"]])
		conflict_detection?: string
		conflict_handler?:   string
	})

	_#defs: "/$defs/sync_config/$defs/lambda_conflict_handler_config": close({
		lambda_conflict_handler_arn?: string
	})
}
