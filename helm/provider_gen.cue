package helm

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/provider")
	close({
		// Helm burst limit. Increase this if you have a cluster with many
		// CRDs
		burst_limit?: number

		// Debug indicates whether or not Helm is running in Debug mode.
		debug?: bool

		// Enable and disable experimental features.
		experiments?: close({
			// Enable full diff by storing the rendered manifest in the state.
			manifest?: bool
		})

		// The backend storage driver. Values are: configmap, secret,
		// memory, sql
		helm_driver?: string

		// The path to the helm plugins directory
		plugins_path?: string

		// Kubernetes Configuration
		kubernetes?: close({
			// PEM-encoded client certificate for TLS authentication.
			client_certificate?: string

			// PEM-encoded client certificate key for TLS authentication.
			client_key?: string

			// PEM-encoded root certificates bundle for TLS authentication.
			cluster_ca_certificate?: string

			// Context to choose from the config file. Can be sourced from
			// KUBE_CTX.
			config_context?: string

			// Authentication info context of the kube config (name of the
			// kubeconfig user, --user flag in kubectl). Can be sourced from
			// KUBE_CTX_AUTH_INFO.
			config_context_auth_info?: string

			// Cluster context of the kube config (name of the kubeconfig
			// cluster, --cluster flag in kubectl). Can be sourced from
			// KUBE_CTX_CLUSTER.
			config_context_cluster?: string

			// Path to the kube config file. Can be set with KUBE_CONFIG_PATH.
			config_path?: string

			// A list of paths to kube config files. Can be set with
			// KUBE_CONFIG_PATHS environment variable.
			config_paths?: [...string]

			// Exec configuration for Kubernetes authentication
			exec?: close({
				// API version for the exec plugin.
				api_version!: string

				// Arguments for the exec plugin
				args?: [...string]

				// Command to run for Kubernetes exec plugin
				command!: string

				// Environment variables for the exec plugin
				env?: [string]: string
			})

			// The hostname (in form of URI) of kubernetes master
			host?: string

			// Whether server should be accessed without verifying the TLS
			// certificate.
			insecure?: bool

			// The password to use for HTTP basic authentication when
			// accessing the Kubernetes master endpoint.
			password?: string

			// URL to the proxy to be used for all API requests.
			proxy_url?: string

			// Server name passed to the server for SNI and is used in the
			// client to check server certificates against.
			tls_server_name?: string

			// Token to authenticate a service account.
			token?: string

			// The username to use for HTTP basic authentication when
			// accessing the Kubernetes master endpoint
			username?: string
		})

		// Queries per second used when communicating with the Kubernetes
		// API. Can be used to avoid throttling.
		qps?: number

		// The path to the registry config file
		registry_config_path?: string

		// RegistryClient configuration.
		registries?: matchN(1, [close({
			// The password to use for the OCI HTTP basic authentication when
			// accessing the Kubernetes master endpoint.
			password!: string

			// OCI URL in form of oci://host:port or oci://host
			url!: string

			// The username to use for the OCI HTTP basic authentication when
			// accessing the Kubernetes master endpoint.
			username!: string
		}), [...close({
			// The password to use for the OCI HTTP basic authentication when
			// accessing the Kubernetes master endpoint.
			password!: string

			// OCI URL in form of oci://host:port or oci://host
			url!: string

			// The username to use for the OCI HTTP basic authentication when
			// accessing the Kubernetes master endpoint.
			username!: string
		})]])

		// The path to the file containing cached repository indexes
		repository_cache?: string

		// The path to the file containing repository names and URLs
		repository_config_path?: string
	})
}
