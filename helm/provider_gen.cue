package helm

import "list"

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/provider")
	burst_limit?:            number
	debug?:                  bool
	helm_driver?:            string
	plugins_path?:           string
	registry_config_path?:   string
	repository_cache?:       string
	repository_config_path?: string
	experiments?:            #experiments | list.MaxItems(1) & [...#experiments]
	kubernetes?:             #kubernetes | list.MaxItems(1) & [...#kubernetes]
	registry?:               #registry | [...#registry]

	#experiments: manifest?: bool

	#kubernetes: {
		client_certificate?:       string
		client_key?:               string
		cluster_ca_certificate?:   string
		config_context?:           string
		config_context_auth_info?: string
		config_context_cluster?:   string
		config_path?:              string
		config_paths?: [...string]
		host?:            string
		insecure?:        bool
		password?:        string
		proxy_url?:       string
		tls_server_name?: string
		token?:           string
		username?:        string
		exec?:            #kubernetes.#exec | list.MaxItems(1) & [...#kubernetes.#exec]

		#exec: {
			api_version: string
			args?: [...string]
			command: string
			env?: [string]: string
		}
	}

	#registry: {
		password: string
		url:      string
		username: string
	}
}
