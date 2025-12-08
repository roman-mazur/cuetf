package res

import "list"

#azurerm_container_registry_task: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_container_registry_task")
	close({
		agent_pool_name?: string
		agent_setting?: matchN(1, [#agent_setting, list.MaxItems(1) & [...#agent_setting]])
		container_registry_id!: string
		enabled?:               bool
		id?:                    string
		is_system_task?:        bool
		log_template?:          string
		name!:                  string
		base_image_trigger?: matchN(1, [#base_image_trigger, list.MaxItems(1) & [...#base_image_trigger]])
		tags?: [string]: string
		timeout_in_seconds?: number
		docker_step?: matchN(1, [#docker_step, list.MaxItems(1) & [...#docker_step]])
		encoded_step?: matchN(1, [#encoded_step, list.MaxItems(1) & [...#encoded_step]])
		file_step?: matchN(1, [#file_step, list.MaxItems(1) & [...#file_step]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		platform?: matchN(1, [#platform, list.MaxItems(1) & [...#platform]])
		registry_credential?: matchN(1, [#registry_credential, list.MaxItems(1) & [...#registry_credential]])
		source_trigger?: matchN(1, [#source_trigger, [...#source_trigger]])
		timeouts?: #timeouts
		timer_trigger?: matchN(1, [#timer_trigger, [...#timer_trigger]])
	})

	#agent_setting: close({
		cpu!: number
	})

	#base_image_trigger: close({
		enabled?:                     bool
		name!:                        string
		type!:                        string
		update_trigger_endpoint?:     string
		update_trigger_payload_type?: string
	})

	#docker_step: close({
		arguments?: [string]: string
		cache_enabled?:        bool
		context_access_token!: string
		context_path!:         string
		dockerfile_path!:      string
		image_names?: [...string]
		push_enabled?: bool
		secret_arguments?: [string]: string
		target?: string
	})

	#encoded_step: close({
		context_access_token?: string
		context_path?:         string
		secret_values?: [string]: string
		task_content!:  string
		value_content?: string
		values?: [string]: string
	})

	#file_step: close({
		context_access_token?: string
		context_path?:         string
		secret_values?: [string]: string
		task_file_path!:  string
		value_file_path?: string
		values?: [string]: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#platform: close({
		architecture?: string
		os!:           string
		variant?:      string
	})

	#registry_credential: close({
		custom?: matchN(1, [_#defs."/$defs/registry_credential/$defs/custom", [..._#defs."/$defs/registry_credential/$defs/custom"]])
		source?: matchN(1, [_#defs."/$defs/registry_credential/$defs/source", list.MaxItems(1) & [..._#defs."/$defs/registry_credential/$defs/source"]])
	})

	#source_trigger: close({
		authentication?: matchN(1, [_#defs."/$defs/source_trigger/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/source_trigger/$defs/authentication"]])
		branch?:  string
		enabled?: bool
		events!: [...string]
		name!:           string
		repository_url!: string
		source_type!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#timer_trigger: close({
		enabled?:  bool
		name!:     string
		schedule!: string
	})

	_#defs: "/$defs/registry_credential/$defs/custom": close({
		identity?:     string
		login_server!: string
		password?:     string
		username?:     string
	})

	_#defs: "/$defs/registry_credential/$defs/source": close({
		login_mode!: string
	})

	_#defs: "/$defs/source_trigger/$defs/authentication": close({
		expire_in_seconds?: number
		refresh_token?:     string
		scope?:             string
		token!:             string
		token_type!:        string
	})
}
