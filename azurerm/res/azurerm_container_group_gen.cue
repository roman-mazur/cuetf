package res

import "list"

#azurerm_container_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_container_group")
	close({
		dns_name_label?:              string
		dns_name_label_reuse_policy?: string
		exposed_port?: [...close({
			port?:     number
			protocol?: string
		})]
		fqdn?:                                string
		id?:                                  string
		ip_address?:                          string
		ip_address_type?:                     string
		key_vault_key_id?:                    string
		key_vault_user_assigned_identity_id?: string
		container!: matchN(1, [#container, [_, ...] & [...#container]])
		diagnostics?: matchN(1, [#diagnostics, list.MaxItems(1) & [...#diagnostics]])
		location!: string
		dns_config?: matchN(1, [#dns_config, list.MaxItems(1) & [...#dns_config]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		name!:    string
		os_type!: string
		image_registry_credential?: matchN(1, [#image_registry_credential, [...#image_registry_credential]])
		priority?:            string
		resource_group_name!: string
		restart_policy?:      string
		sku?:                 string
		subnet_ids?: [...string]
		init_container?: matchN(1, [#init_container, [...#init_container]])
		tags?: [string]: string
		zones?: [...string]
		timeouts?: #timeouts
	})

	#container: close({
		commands?: [...string]
		cpu!:       number
		cpu_limit?: number
		environment_variables?: [string]: string
		image!: string
		liveness_probe?: matchN(1, [_#defs."/$defs/container/$defs/liveness_probe", list.MaxItems(1) & [..._#defs."/$defs/container/$defs/liveness_probe"]])
		memory!:       number
		memory_limit?: number
		ports?: matchN(1, [_#defs."/$defs/container/$defs/ports", [..._#defs."/$defs/container/$defs/ports"]])
		readiness_probe?: matchN(1, [_#defs."/$defs/container/$defs/readiness_probe", list.MaxItems(1) & [..._#defs."/$defs/container/$defs/readiness_probe"]])
		name!: string
		security?: matchN(1, [_#defs."/$defs/container/$defs/security", [..._#defs."/$defs/container/$defs/security"]])
		volume?: matchN(1, [_#defs."/$defs/container/$defs/volume", [..._#defs."/$defs/container/$defs/volume"]])
		secure_environment_variables?: [string]: string
	})

	#diagnostics: close({
		log_analytics!: matchN(1, [_#defs."/$defs/diagnostics/$defs/log_analytics", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/diagnostics/$defs/log_analytics"]])
	})

	#dns_config: close({
		nameservers!: [...string]
		options?: [...string]
		search_domains?: [...string]
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#image_registry_credential: close({
		password?: string
		server!:   string

		// The User Assigned Identity to use for Container Registry
		// access.
		user_assigned_identity_id?: string
		username?:                  string
	})

	#init_container: close({
		security?: matchN(1, [_#defs."/$defs/init_container/$defs/security", [..._#defs."/$defs/init_container/$defs/security"]])
		commands?: [...string]
		environment_variables?: [string]: string
		image!: string
		name!:  string
		secure_environment_variables?: [string]: string
		volume?: matchN(1, [_#defs."/$defs/init_container/$defs/volume", [..._#defs."/$defs/init_container/$defs/volume"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/container/$defs/liveness_probe": close({
		http_get?: matchN(1, [_#defs."/$defs/container/$defs/liveness_probe/$defs/http_get", [..._#defs."/$defs/container/$defs/liveness_probe/$defs/http_get"]])
		exec?: [...string]
		failure_threshold?:     number
		initial_delay_seconds?: number
		period_seconds?:        number
		success_threshold?:     number
		timeout_seconds?:       number
	})

	_#defs: "/$defs/container/$defs/liveness_probe/$defs/http_get": close({
		http_headers?: [string]: string
		path?:   string
		port?:   number
		scheme?: string
	})

	_#defs: "/$defs/container/$defs/ports": close({
		port?:     number
		protocol?: string
	})

	_#defs: "/$defs/container/$defs/readiness_probe": close({
		http_get?: matchN(1, [_#defs."/$defs/container/$defs/readiness_probe/$defs/http_get", [..._#defs."/$defs/container/$defs/readiness_probe/$defs/http_get"]])
		exec?: [...string]
		failure_threshold?:     number
		initial_delay_seconds?: number
		period_seconds?:        number
		success_threshold?:     number
		timeout_seconds?:       number
	})

	_#defs: "/$defs/container/$defs/readiness_probe/$defs/http_get": close({
		http_headers?: [string]: string
		path?:   string
		port?:   number
		scheme?: string
	})

	_#defs: "/$defs/container/$defs/security": close({
		privilege_enabled!: bool
	})

	_#defs: "/$defs/container/$defs/volume": close({
		git_repo?: matchN(1, [_#defs."/$defs/container/$defs/volume/$defs/git_repo", list.MaxItems(1) & [..._#defs."/$defs/container/$defs/volume/$defs/git_repo"]])
		empty_dir?:  bool
		mount_path!: string
		name!:       string
		read_only?:  bool
		secret?: [string]: string
		share_name?:           string
		storage_account_key?:  string
		storage_account_name?: string
	})

	_#defs: "/$defs/container/$defs/volume/$defs/git_repo": close({
		directory?: string
		revision?:  string
		url!:       string
	})

	_#defs: "/$defs/diagnostics/$defs/log_analytics": close({
		log_type?: string
		metadata?: [string]: string
		workspace_id!:  string
		workspace_key!: string
	})

	_#defs: "/$defs/init_container/$defs/security": close({
		privilege_enabled!: bool
	})

	_#defs: "/$defs/init_container/$defs/volume": close({
		git_repo?: matchN(1, [_#defs."/$defs/init_container/$defs/volume/$defs/git_repo", list.MaxItems(1) & [..._#defs."/$defs/init_container/$defs/volume/$defs/git_repo"]])
		empty_dir?:  bool
		mount_path!: string
		name!:       string
		read_only?:  bool
		secret?: [string]: string
		share_name?:           string
		storage_account_key?:  string
		storage_account_name?: string
	})

	_#defs: "/$defs/init_container/$defs/volume/$defs/git_repo": close({
		directory?: string
		revision?:  string
		url!:       string
	})
}
