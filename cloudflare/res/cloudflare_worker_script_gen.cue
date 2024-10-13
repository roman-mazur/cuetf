package res

#cloudflare_worker_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_worker_script")
	account_id!:         string
	compatibility_date?: string
	compatibility_flags?: [...string]
	content!:            string
	dispatch_namespace?: string
	id?:                 string
	logpush?:            bool
	module?:             bool
	name!:               string
	tags?: [...string]
	analytics_engine_binding?: #analytics_engine_binding | [...#analytics_engine_binding]
	d1_database_binding?: #d1_database_binding | [...#d1_database_binding]
	hyperdrive_config_binding?: #hyperdrive_config_binding | [...#hyperdrive_config_binding]
	kv_namespace_binding?: #kv_namespace_binding | [...#kv_namespace_binding]
	placement?: #placement | [...#placement]
	plain_text_binding?: #plain_text_binding | [...#plain_text_binding]
	queue_binding?: #queue_binding | [...#queue_binding]
	r2_bucket_binding?: #r2_bucket_binding | [...#r2_bucket_binding]
	secret_text_binding?: #secret_text_binding | [...#secret_text_binding]
	service_binding?: #service_binding | [...#service_binding]
	webassembly_binding?: #webassembly_binding | [...#webassembly_binding]

	#analytics_engine_binding: {
		dataset!: string
		name!:    string
	}

	#d1_database_binding: {
		database_id!: string
		name!:        string
	}

	#hyperdrive_config_binding: {
		binding!: string
		id!:      string
	}

	#kv_namespace_binding: {
		name!:         string
		namespace_id!: string
	}

	#placement: mode!: string

	#plain_text_binding: {
		name!: string
		text!: string
	}

	#queue_binding: {
		binding!: string
		queue!:   string
	}

	#r2_bucket_binding: {
		bucket_name!: string
		name!:        string
	}

	#secret_text_binding: {
		name!: string
		text!: string
	}

	#service_binding: {
		environment?: string
		name!:        string
		service!:     string
	}

	#webassembly_binding: {
		module!: string
		name!:   string
	}
}
