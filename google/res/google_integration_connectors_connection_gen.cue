package res

import "list"

#google_integration_connectors_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_integration_connectors_connection")
	close({
		// Connection revision. This field is only updated when the
		// connection is created or updated by User.
		connection_revision?: string
		auth_config?: matchN(1, [#auth_config, list.MaxItems(1) & [...#auth_config]])

		// connectorVersion of the Connector.
		connector_version!: string

		// This configuration provides infra configs like rate limit
		// threshold which need to be configurable for every connector
		// version.
		connector_version_infra_config?: [...close({
			ratelimit_threshold?: string
		})]

		// Flag to mark the version indicating the launch stage.
		connector_version_launch_stage?: string

		// Time the Namespace was created in UTC.
		create_time?: string

		// An arbitrary description for the Connection.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Eventing enablement type. Will be nil if eventing is not
		// enabled. Possible values: ["EVENTING_AND_CONNECTION",
		// "ONLY_EVENTING"]
		eventing_enablement_type?: string

		// Eventing Runtime Data.
		eventing_runtime_data?: [...close({
			events_listener_endpoint?: string
			status?: [...close({
				description?: string
				state?:       string
			})]
		})]
		id?: string

		// Resource labels to represent user provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Location in which Connection needs to be created.
		location!: string
		config_variable?: matchN(1, [#config_variable, [...#config_variable]])

		// Name of Connection needs to be created.
		name!: string
		destination_config?: matchN(1, [#destination_config, [...#destination_config]])
		eventing_config?: matchN(1, [#eventing_config, list.MaxItems(1) & [...#eventing_config]])
		lock_config?: matchN(1, [#lock_config, list.MaxItems(1) & [...#lock_config]])
		log_config?: matchN(1, [#log_config, list.MaxItems(1) & [...#log_config]])
		node_config?: matchN(1, [#node_config, list.MaxItems(1) & [...#node_config]])
		ssl_config?: matchN(1, [#ssl_config, list.MaxItems(1) & [...#ssl_config]])
		timeouts?: #timeouts

		// Service account needed for runtime plane to access Google Cloud
		// resources.
		service_account?: string
		project?:         string

		// The name of the Service Directory service name. Used for
		// Private Harpoon to resolve the ILB address.
		// e.g.
		// "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
		service_directory?: string

		// Status of the Integration Connector.
		status?: [...close({
			description?: string
			state?:       string
			status?:      string
		})]

		// This subscription type enum states the subscription type of the
		// project.
		subscription_type?: string

		// Suspended indicates if a user has suspended a connection or
		// not.
		suspended?: bool

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time the Namespace was updated in UTC.
		update_time?: string
	})

	#auth_config: close({
		additional_variable?: matchN(1, [_#defs."/$defs/auth_config/$defs/additional_variable", [..._#defs."/$defs/auth_config/$defs/additional_variable"]])
		oauth2_auth_code_flow?: matchN(1, [_#defs."/$defs/auth_config/$defs/oauth2_auth_code_flow", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/oauth2_auth_code_flow"]])

		// The type of authentication configured.
		auth_key?: string

		// authType of the Connection Possible values:
		// ["AUTH_TYPE_UNSPECIFIED", "USER_PASSWORD",
		// "OAUTH2_JWT_BEARER", "OAUTH2_CLIENT_CREDENTIALS",
		// "SSH_PUBLIC_KEY", "OAUTH2_AUTH_CODE_FLOW"]
		auth_type!: string
		oauth2_client_credentials?: matchN(1, [_#defs."/$defs/auth_config/$defs/oauth2_client_credentials", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/oauth2_client_credentials"]])
		oauth2_jwt_bearer?: matchN(1, [_#defs."/$defs/auth_config/$defs/oauth2_jwt_bearer", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/oauth2_jwt_bearer"]])
		ssh_public_key?: matchN(1, [_#defs."/$defs/auth_config/$defs/ssh_public_key", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/ssh_public_key"]])
		user_password?: matchN(1, [_#defs."/$defs/auth_config/$defs/user_password", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/user_password"]])
	})

	#config_variable: close({
		// Boolean Value of configVariable
		boolean_value?: bool

		// Integer Value of configVariable
		integer_value?: number

		// Key for the configVariable
		key!: string

		// String Value of configVariabley
		string_value?: string
		encryption_key_value?: matchN(1, [_#defs."/$defs/config_variable/$defs/encryption_key_value", list.MaxItems(1) & [..._#defs."/$defs/config_variable/$defs/encryption_key_value"]])
		secret_value?: matchN(1, [_#defs."/$defs/config_variable/$defs/secret_value", list.MaxItems(1) & [..._#defs."/$defs/config_variable/$defs/secret_value"]])
	})

	#destination_config: close({
		destination?: matchN(1, [_#defs."/$defs/destination_config/$defs/destination", [..._#defs."/$defs/destination_config/$defs/destination"]])

		// The key is the destination identifier that is supported by the
		// Connector.
		key!: string
	})

	#eventing_config: close({
		additional_variable?: matchN(1, [_#defs."/$defs/eventing_config/$defs/additional_variable", [..._#defs."/$defs/eventing_config/$defs/additional_variable"]])
		auth_config?: matchN(1, [_#defs."/$defs/eventing_config/$defs/auth_config", list.MaxItems(1) & [..._#defs."/$defs/eventing_config/$defs/auth_config"]])
		registration_destination_config!: matchN(1, [_#defs."/$defs/eventing_config/$defs/registration_destination_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/eventing_config/$defs/registration_destination_config"]])

		// Enrichment Enabled.
		enrichment_enabled?: bool
	})

	#lock_config: close({
		// Indicates whether or not the connection is locked.
		locked!: bool

		// Describes why a connection is locked.
		reason?: string
	})

	#log_config: close({
		// Enabled represents whether logging is enabled or not for a
		// connection.
		enabled!: bool

		// Log configuration level. Possible values:
		// ["LOG_LEVEL_UNSPECIFIED", "ERROR", "INFO", "DEBUG"]
		level?: string
	})

	#node_config: close({
		// Minimum number of nodes in the runtime nodes.
		max_node_count?: number

		// Minimum number of nodes in the runtime nodes.
		min_node_count?: number
	})

	#ssl_config: close({
		// Type of Client Cert (PEM/JKS/.. etc.) Possible values: ["PEM"]
		client_cert_type?: string

		// Type of Server Cert (PEM/JKS/.. etc.) Possible values: ["PEM"]
		server_cert_type?: string

		// Enum for Trust Model Possible values: ["PUBLIC", "PRIVATE",
		// "INSECURE"]
		trust_model?: string

		// Enum for controlling the SSL Type (TLS/MTLS) Possible values:
		// ["TLS", "MTLS"]
		type!: string
		additional_variable?: matchN(1, [_#defs."/$defs/ssl_config/$defs/additional_variable", [..._#defs."/$defs/ssl_config/$defs/additional_variable"]])
		client_certificate?: matchN(1, [_#defs."/$defs/ssl_config/$defs/client_certificate", list.MaxItems(1) & [..._#defs."/$defs/ssl_config/$defs/client_certificate"]])
		client_private_key?: matchN(1, [_#defs."/$defs/ssl_config/$defs/client_private_key", list.MaxItems(1) & [..._#defs."/$defs/ssl_config/$defs/client_private_key"]])
		client_private_key_pass?: matchN(1, [_#defs."/$defs/ssl_config/$defs/client_private_key_pass", list.MaxItems(1) & [..._#defs."/$defs/ssl_config/$defs/client_private_key_pass"]])
		private_server_certificate?: matchN(1, [_#defs."/$defs/ssl_config/$defs/private_server_certificate", list.MaxItems(1) & [..._#defs."/$defs/ssl_config/$defs/private_server_certificate"]])

		// Bool for enabling SSL
		use_ssl?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/auth_config/$defs/additional_variable": close({
		// Boolean Value of configVariable.
		boolean_value?: bool

		// Integer Value of configVariable.
		integer_value?: number

		// Key for the configVariable
		key!: string

		// String Value of configVariabley.
		string_value?: string
		encryption_key_value?: matchN(1, [_#defs."/$defs/auth_config/$defs/additional_variable/$defs/encryption_key_value", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/additional_variable/$defs/encryption_key_value"]])
		secret_value?: matchN(1, [_#defs."/$defs/auth_config/$defs/additional_variable/$defs/secret_value", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/additional_variable/$defs/secret_value"]])
	})

	_#defs: "/$defs/auth_config/$defs/additional_variable/$defs/encryption_key_value": close({
		// The [KMS key name] with which the content of the Operation is
		// encrypted. The
		// expected format:
		// projects/*/locations/*/keyRings/*/cryptoKeys/*.
		// Will be empty string if google managed.
		kms_key_name?: string

		// Type of Encryption Key Possible values: ["GOOGLE_MANAGED",
		// "CUSTOMER_MANAGED"]
		type!: string
	})

	_#defs: "/$defs/auth_config/$defs/additional_variable/$defs/secret_value": close({
		// Secret version of Secret Value for Config variable.
		secret_version!: string
	})

	_#defs: "/$defs/auth_config/$defs/oauth2_auth_code_flow": close({
		// Auth URL for Authorization Code Flow.
		auth_uri?: string

		// Client ID for user-provided OAuth app.
		client_id?: string

		// Whether to enable PKCE when the user performs the auth code
		// flow.
		enable_pkce?: bool
		client_secret?: matchN(1, [_#defs."/$defs/auth_config/$defs/oauth2_auth_code_flow/$defs/client_secret", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/oauth2_auth_code_flow/$defs/client_secret"]])

		// Scopes the connection will request when the user performs the
		// auth code flow.
		scopes?: [...string]
	})

	_#defs: "/$defs/auth_config/$defs/oauth2_auth_code_flow/$defs/client_secret": close({
		// The resource name of the secret version in the format,
		// format as: projects/*/secrets/*/versions/*.
		secret_version!: string
	})

	_#defs: "/$defs/auth_config/$defs/oauth2_client_credentials": close({
		client_secret?: matchN(1, [_#defs."/$defs/auth_config/$defs/oauth2_client_credentials/$defs/client_secret", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/oauth2_client_credentials/$defs/client_secret"]])

		// Secret version of Password for Authentication.
		client_id!: string
	})

	_#defs: "/$defs/auth_config/$defs/oauth2_client_credentials/$defs/client_secret": close({
		// The resource name of the secret version in the format,
		// format as: projects/*/secrets/*/versions/*.
		secret_version!: string
	})

	_#defs: "/$defs/auth_config/$defs/oauth2_jwt_bearer": close({
		client_key?: matchN(1, [_#defs."/$defs/auth_config/$defs/oauth2_jwt_bearer/$defs/client_key", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/oauth2_jwt_bearer/$defs/client_key"]])
		jwt_claims?: matchN(1, [_#defs."/$defs/auth_config/$defs/oauth2_jwt_bearer/$defs/jwt_claims", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/oauth2_jwt_bearer/$defs/jwt_claims"]])
	})

	_#defs: "/$defs/auth_config/$defs/oauth2_jwt_bearer/$defs/client_key": close({
		// The resource name of the secret version in the format,
		// format as: projects/*/secrets/*/versions/*.
		secret_version!: string
	})

	_#defs: "/$defs/auth_config/$defs/oauth2_jwt_bearer/$defs/jwt_claims": close({
		// Value for the "aud" claim.
		audience?: string

		// Value for the "iss" claim.
		issuer?: string

		// Value for the "sub" claim.
		subject?: string
	})

	_#defs: "/$defs/auth_config/$defs/ssh_public_key": close({
		ssh_client_cert?: matchN(1, [_#defs."/$defs/auth_config/$defs/ssh_public_key/$defs/ssh_client_cert", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/ssh_public_key/$defs/ssh_client_cert"]])
		ssh_client_cert_pass?: matchN(1, [_#defs."/$defs/auth_config/$defs/ssh_public_key/$defs/ssh_client_cert_pass", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/ssh_public_key/$defs/ssh_client_cert_pass"]])

		// Format of SSH Client cert.
		cert_type?: string

		// The user account used to authenticate.
		username!: string
	})

	_#defs: "/$defs/auth_config/$defs/ssh_public_key/$defs/ssh_client_cert": close({
		// The resource name of the secret version in the format,
		// format as: projects/*/secrets/*/versions/*.
		secret_version!: string
	})

	_#defs: "/$defs/auth_config/$defs/ssh_public_key/$defs/ssh_client_cert_pass": close({
		// The resource name of the secret version in the format,
		// format as: projects/*/secrets/*/versions/*.
		secret_version!: string
	})

	_#defs: "/$defs/auth_config/$defs/user_password": close({
		password?: matchN(1, [_#defs."/$defs/auth_config/$defs/user_password/$defs/password", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/user_password/$defs/password"]])

		// Username for Authentication.
		username!: string
	})

	_#defs: "/$defs/auth_config/$defs/user_password/$defs/password": close({
		// The resource name of the secret version in the format,
		// format as: projects/*/secrets/*/versions/*.
		secret_version!: string
	})

	_#defs: "/$defs/config_variable/$defs/encryption_key_value": close({
		// The [KMS key name] with which the content of the Operation is
		// encrypted. The
		// expected format:
		// projects/*/locations/*/keyRings/*/cryptoKeys/*.
		// Will be empty string if google managed.
		kms_key_name?: string

		// Type of Encryption Key Possible values: ["GOOGLE_MANAGED",
		// "CUSTOMER_MANAGED"]
		type!: string
	})

	_#defs: "/$defs/config_variable/$defs/secret_value": close({
		// Secret version of Secret Value for Config variable.
		secret_version!: string
	})

	_#defs: "/$defs/destination_config/$defs/destination": close({
		// For publicly routable host.
		host?: string

		// The port is the target port number that is accepted by the
		// destination.
		port?: number

		// PSC service attachments. Format:
		// projects/*/regions/*/serviceAttachments/*
		service_attachment?: string
	})

	_#defs: "/$defs/eventing_config/$defs/additional_variable": close({
		// Boolean Value of configVariable.
		boolean_value?: bool

		// Integer Value of configVariable.
		integer_value?: number

		// Key for the configVariable
		key!: string

		// String Value of configVariabley.
		string_value?: string
		encryption_key_value?: matchN(1, [_#defs."/$defs/eventing_config/$defs/additional_variable/$defs/encryption_key_value", list.MaxItems(1) & [..._#defs."/$defs/eventing_config/$defs/additional_variable/$defs/encryption_key_value"]])
		secret_value?: matchN(1, [_#defs."/$defs/eventing_config/$defs/additional_variable/$defs/secret_value", list.MaxItems(1) & [..._#defs."/$defs/eventing_config/$defs/additional_variable/$defs/secret_value"]])
	})

	_#defs: "/$defs/eventing_config/$defs/additional_variable/$defs/encryption_key_value": close({
		// The [KMS key name] with which the content of the Operation is
		// encrypted. The
		// expected format:
		// projects/*/locations/*/keyRings/*/cryptoKeys/*.
		// Will be empty string if google managed.
		kms_key_name?: string

		// Type of Encryption Key Possible values: ["GOOGLE_MANAGED",
		// "CUSTOMER_MANAGED"]
		type?: string
	})

	_#defs: "/$defs/eventing_config/$defs/additional_variable/$defs/secret_value": close({
		// Secret version of Secret Value for Config variable.
		secret_version!: string
	})

	_#defs: "/$defs/eventing_config/$defs/auth_config": close({
		additional_variable?: matchN(1, [_#defs."/$defs/eventing_config/$defs/auth_config/$defs/additional_variable", [..._#defs."/$defs/eventing_config/$defs/auth_config/$defs/additional_variable"]])
		user_password!: matchN(1, [_#defs."/$defs/eventing_config/$defs/auth_config/$defs/user_password", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/eventing_config/$defs/auth_config/$defs/user_password"]])

		// The type of authentication configured.
		auth_key?: string

		// authType of the Connection Possible values: ["USER_PASSWORD"]
		auth_type!: string
	})

	_#defs: "/$defs/eventing_config/$defs/auth_config/$defs/additional_variable": close({
		// Boolean Value of configVariable.
		boolean_value?: bool

		// Integer Value of configVariable.
		integer_value?: number

		// Key for the configVariable
		key!: string

		// String Value of configVariabley.
		string_value?: string
		encryption_key_value?: matchN(1, [_#defs."/$defs/eventing_config/$defs/auth_config/$defs/additional_variable/$defs/encryption_key_value", list.MaxItems(1) & [..._#defs."/$defs/eventing_config/$defs/auth_config/$defs/additional_variable/$defs/encryption_key_value"]])
		secret_value?: matchN(1, [_#defs."/$defs/eventing_config/$defs/auth_config/$defs/additional_variable/$defs/secret_value", list.MaxItems(1) & [..._#defs."/$defs/eventing_config/$defs/auth_config/$defs/additional_variable/$defs/secret_value"]])
	})

	_#defs: "/$defs/eventing_config/$defs/auth_config/$defs/additional_variable/$defs/encryption_key_value": close({
		// The [KMS key name] with which the content of the Operation is
		// encrypted. The
		// expected format:
		// projects/*/locations/*/keyRings/*/cryptoKeys/*.
		// Will be empty string if google managed.
		kms_key_name?: string

		// Type of Encryption Key Possible values: ["GOOGLE_MANAGED",
		// "CUSTOMER_MANAGED"]
		type?: string
	})

	_#defs: "/$defs/eventing_config/$defs/auth_config/$defs/additional_variable/$defs/secret_value": close({
		// Secret version of Secret Value for Config variable.
		secret_version!: string
	})

	_#defs: "/$defs/eventing_config/$defs/auth_config/$defs/user_password": close({
		password?: matchN(1, [_#defs."/$defs/eventing_config/$defs/auth_config/$defs/user_password/$defs/password", list.MaxItems(1) & [..._#defs."/$defs/eventing_config/$defs/auth_config/$defs/user_password/$defs/password"]])

		// Username for Authentication.
		username?: string
	})

	_#defs: "/$defs/eventing_config/$defs/auth_config/$defs/user_password/$defs/password": close({
		// The resource name of the secret version in the format,
		// format as: projects/*/secrets/*/versions/*.
		secret_version!: string
	})

	_#defs: "/$defs/eventing_config/$defs/registration_destination_config": close({
		destination?: matchN(1, [_#defs."/$defs/eventing_config/$defs/registration_destination_config/$defs/destination", [..._#defs."/$defs/eventing_config/$defs/registration_destination_config/$defs/destination"]])

		// Key for the connection
		key?: string
	})

	_#defs: "/$defs/eventing_config/$defs/registration_destination_config/$defs/destination": close({
		// Host
		host?: string

		// port number
		port?: number

		// Service Attachment
		service_attachment?: string
	})

	_#defs: "/$defs/ssl_config/$defs/additional_variable": close({
		// Boolean Value of configVariable.
		boolean_value?: bool

		// Integer Value of configVariable.
		integer_value?: number

		// Key for the configVariable
		key!: string

		// String Value of configVariabley.
		string_value?: string
		encryption_key_value?: matchN(1, [_#defs."/$defs/ssl_config/$defs/additional_variable/$defs/encryption_key_value", list.MaxItems(1) & [..._#defs."/$defs/ssl_config/$defs/additional_variable/$defs/encryption_key_value"]])
		secret_value?: matchN(1, [_#defs."/$defs/ssl_config/$defs/additional_variable/$defs/secret_value", list.MaxItems(1) & [..._#defs."/$defs/ssl_config/$defs/additional_variable/$defs/secret_value"]])
	})

	_#defs: "/$defs/ssl_config/$defs/additional_variable/$defs/encryption_key_value": close({
		// The [KMS key name] with which the content of the Operation is
		// encrypted. The
		// expected format:
		// projects/*/locations/*/keyRings/*/cryptoKeys/*.
		// Will be empty string if google managed.
		kms_key_name?: string

		// Type of Encryption Key Possible values: ["GOOGLE_MANAGED",
		// "CUSTOMER_MANAGED"]
		type?: string
	})

	_#defs: "/$defs/ssl_config/$defs/additional_variable/$defs/secret_value": close({
		// Secret version of Secret Value for Config variable.
		secret_version!: string
	})

	_#defs: "/$defs/ssl_config/$defs/client_certificate": close({
		// Secret version of Secret Value for Config variable.
		secret_version!: string
	})

	_#defs: "/$defs/ssl_config/$defs/client_private_key": close({
		// Secret version of Secret Value for Config variable.
		secret_version!: string
	})

	_#defs: "/$defs/ssl_config/$defs/client_private_key_pass": close({
		// Secret version of Secret Value for Config variable.
		secret_version!: string
	})

	_#defs: "/$defs/ssl_config/$defs/private_server_certificate": close({
		// Secret version of Secret Value for Config variable.
		secret_version!: string
	})
}
