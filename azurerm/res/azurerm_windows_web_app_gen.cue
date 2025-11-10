package res

import "list"

#azurerm_windows_web_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_windows_web_app")
	close({
		app_settings?: [string]: string
		client_affinity_enabled?: bool

		// Paths to exclude when using client certificates, separated by ;
		client_certificate_exclusion_paths?:       string
		client_certificate_enabled?:               bool
		client_certificate_mode?:                  string
		custom_domain_verification_id?:            string
		default_hostname?:                         string
		enabled?:                                  bool
		ftp_publish_basic_authentication_enabled?: bool
		hosting_environment_id?:                   string
		https_only?:                               bool
		id?:                                       string
		key_vault_reference_identity_id?:          string
		kind?:                                     string
		location!:                                 string
		name!:                                     string
		outbound_ip_address_list?: [...string]
		outbound_ip_addresses?: string
		possible_outbound_ip_address_list?: [...string]
		possible_outbound_ip_addresses?: string
		public_network_access_enabled?:  bool
		auth_settings?: matchN(1, [#auth_settings, list.MaxItems(1) & [...#auth_settings]])
		resource_group_name!: string
		service_plan_id!:     string
		site_credential?: [...close({
			name?:     string
			password?: string
		})]
		tags?: [string]: string
		auth_settings_v2?: matchN(1, [#auth_settings_v2, list.MaxItems(1) & [...#auth_settings_v2]])
		virtual_network_backup_restore_enabled?: bool
		virtual_network_image_pull_enabled?:     bool

		// The local path and filename of the Zip packaged application to
		// deploy to this Windows Web App. **Note:** Using this value
		// requires either `WEBSITE_RUN_FROM_PACKAGE=1` or
		// `SCM_DO_BUILD_DURING_DEPLOYMENT=true` to be set on the App in
		// `app_settings`.
		zip_deploy_file?:                                string
		virtual_network_subnet_id?:                      string
		webdeploy_publish_basic_authentication_enabled?: bool
		backup?: matchN(1, [#backup, list.MaxItems(1) & [...#backup]])
		connection_string?: matchN(1, [#connection_string, [...#connection_string]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		logs?: matchN(1, [#logs, list.MaxItems(1) & [...#logs]])
		site_config!: matchN(1, [#site_config, list.MaxItems(1) & [_, ...] & [...#site_config]])
		sticky_settings?: matchN(1, [#sticky_settings, list.MaxItems(1) & [...#sticky_settings]])
		storage_account?: matchN(1, [#storage_account, [...#storage_account]])
		timeouts?: #timeouts
	})

	#auth_settings: close({
		// Specifies a map of Login Parameters to send to the OpenID
		// Connect authorization endpoint when a user logs in.
		additional_login_parameters?: [string]: string
		active_directory?: matchN(1, [_#defs."/$defs/auth_settings/$defs/active_directory", list.MaxItems(1) & [..._#defs."/$defs/auth_settings/$defs/active_directory"]])

		// Specifies a list of External URLs that can be redirected to as
		// part of logging in or logging out of the Windows Web App.
		allowed_external_redirect_urls?: [...string]

		// The default authentication provider to use when multiple
		// providers are configured. Possible values include:
		// `AzureActiveDirectory`, `Facebook`, `Google`,
		// `MicrosoftAccount`, `Twitter`, `Github`.
		default_provider?: string

		// Should the Authentication / Authorization feature be enabled?
		enabled!: bool

		// The OpenID Connect Issuer URI that represents the entity which
		// issues access tokens.
		issuer?: string

		// The RuntimeVersion of the Authentication / Authorization
		// feature in use.
		runtime_version?: string
		facebook?: matchN(1, [_#defs."/$defs/auth_settings/$defs/facebook", list.MaxItems(1) & [..._#defs."/$defs/auth_settings/$defs/facebook"]])
		github?: matchN(1, [_#defs."/$defs/auth_settings/$defs/github", list.MaxItems(1) & [..._#defs."/$defs/auth_settings/$defs/github"]])
		google?: matchN(1, [_#defs."/$defs/auth_settings/$defs/google", list.MaxItems(1) & [..._#defs."/$defs/auth_settings/$defs/google"]])
		microsoft?: matchN(1, [_#defs."/$defs/auth_settings/$defs/microsoft", list.MaxItems(1) & [..._#defs."/$defs/auth_settings/$defs/microsoft"]])
		twitter?: matchN(1, [_#defs."/$defs/auth_settings/$defs/twitter", list.MaxItems(1) & [..._#defs."/$defs/auth_settings/$defs/twitter"]])

		// The number of hours after session token expiration that a
		// session token can be used to call the token refresh API.
		// Defaults to `72` hours.
		token_refresh_extension_hours?: number

		// Should the Windows Web App durably store platform-specific
		// security tokens that are obtained during login flows? Defaults
		// to `false`.
		token_store_enabled?: bool

		// The action to take when an unauthenticated client attempts to
		// access the app. Possible values include:
		// `RedirectToLoginPage`, `AllowAnonymous`.
		unauthenticated_client_action?: string
	})

	#auth_settings_v2: close({
		// Should the AuthV2 Settings be enabled. Defaults to `false`
		auth_enabled?: bool

		// The path to the App Auth settings. **Note:** Relative Paths are
		// evaluated from the Site Root directory.
		config_file_path?: string

		// The Default Authentication Provider to use when the
		// `unauthenticated_action` is set to `RedirectToLoginPage`.
		// Possible values include: `apple`, `azureactivedirectory`,
		// `facebook`, `github`, `google`, `twitter` and the `name` of
		// your `custom_oidc_v2` provider.
		default_provider?: string

		// The paths which should be excluded from the
		// `unauthenticated_action` when it is set to
		// `RedirectToLoginPage`.
		excluded_paths?: [...string]

		// The convention used to determine the url of the request made.
		// Possible values include `ForwardProxyConventionNoProxy`,
		// `ForwardProxyConventionStandard`,
		// `ForwardProxyConventionCustom`. Defaults to
		// `ForwardProxyConventionNoProxy`
		forward_proxy_convention?: string

		// The name of the header containing the host of the request.
		forward_proxy_custom_host_header_name?: string

		// The name of the header containing the scheme of the request.
		forward_proxy_custom_scheme_header_name?: string

		// The prefix that should precede all the authentication and
		// authorisation paths. Defaults to `/.auth`
		http_route_api_prefix?: string
		active_directory_v2?: matchN(1, [_#defs."/$defs/auth_settings_v2/$defs/active_directory_v2", list.MaxItems(1) & [..._#defs."/$defs/auth_settings_v2/$defs/active_directory_v2"]])
		apple_v2?: matchN(1, [_#defs."/$defs/auth_settings_v2/$defs/apple_v2", list.MaxItems(1) & [..._#defs."/$defs/auth_settings_v2/$defs/apple_v2"]])
		azure_static_web_app_v2?: matchN(1, [_#defs."/$defs/auth_settings_v2/$defs/azure_static_web_app_v2", list.MaxItems(1) & [..._#defs."/$defs/auth_settings_v2/$defs/azure_static_web_app_v2"]])
		custom_oidc_v2?: matchN(1, [_#defs."/$defs/auth_settings_v2/$defs/custom_oidc_v2", [..._#defs."/$defs/auth_settings_v2/$defs/custom_oidc_v2"]])
		facebook_v2?: matchN(1, [_#defs."/$defs/auth_settings_v2/$defs/facebook_v2", list.MaxItems(1) & [..._#defs."/$defs/auth_settings_v2/$defs/facebook_v2"]])
		github_v2?: matchN(1, [_#defs."/$defs/auth_settings_v2/$defs/github_v2", list.MaxItems(1) & [..._#defs."/$defs/auth_settings_v2/$defs/github_v2"]])
		google_v2?: matchN(1, [_#defs."/$defs/auth_settings_v2/$defs/google_v2", list.MaxItems(1) & [..._#defs."/$defs/auth_settings_v2/$defs/google_v2"]])
		login!: matchN(1, [_#defs."/$defs/auth_settings_v2/$defs/login", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/auth_settings_v2/$defs/login"]])
		microsoft_v2?: matchN(1, [_#defs."/$defs/auth_settings_v2/$defs/microsoft_v2", list.MaxItems(1) & [..._#defs."/$defs/auth_settings_v2/$defs/microsoft_v2"]])

		// Should the authentication flow be used for all requests.
		require_authentication?: bool
		twitter_v2?: matchN(1, [_#defs."/$defs/auth_settings_v2/$defs/twitter_v2", list.MaxItems(1) & [..._#defs."/$defs/auth_settings_v2/$defs/twitter_v2"]])

		// Should HTTPS be required on connections? Defaults to true.
		require_https?: bool

		// The Runtime Version of the Authentication and Authorisation
		// feature of this App. Defaults to `~1`
		runtime_version?: string

		// The action to take for requests made without authentication.
		// Possible values include `RedirectToLoginPage`,
		// `AllowAnonymous`, `Return401`, and `Return403`. Defaults to
		// `RedirectToLoginPage`.
		unauthenticated_action?: string
	})

	#backup: close({
		// Should this backup job be enabled?
		enabled?: bool
		schedule!: matchN(1, [_#defs."/$defs/backup/$defs/schedule", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/backup/$defs/schedule"]])

		// The name which should be used for this Backup.
		name!: string

		// The SAS URL to the container.
		storage_account_url!: string
	})

	#connection_string: close({
		// The name which should be used for this Connection.
		name!: string

		// Type of database. Possible values include: `MySQL`,
		// `SQLServer`, `SQLAzure`, `Custom`, `NotificationHub`,
		// `ServiceBus`, `EventHub`, `APIHub`, `DocDb`, `RedisCache`, and
		// `PostgreSQL`.
		type!: string

		// The connection string value.
		value!: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#logs: close({
		application_logs?: matchN(1, [_#defs."/$defs/logs/$defs/application_logs", list.MaxItems(1) & [..._#defs."/$defs/logs/$defs/application_logs"]])
		http_logs?: matchN(1, [_#defs."/$defs/logs/$defs/http_logs", list.MaxItems(1) & [..._#defs."/$defs/logs/$defs/http_logs"]])
		detailed_error_messages?: bool
		failed_request_tracing?:  bool
	})

	#site_config: close({
		always_on?:                                     bool
		api_definition_url?:                            string
		api_management_api_id?:                         string
		app_command_line?:                              string
		container_registry_managed_identity_client_id?: string

		// The amount of time in minutes that a node is unhealthy before
		// being removed from the load balancer. Possible values are
		// between `2` and `10`. Only valid in conjunction with
		// `health_check_path`
		health_check_eviction_time_in_min?: number
		application_stack?: matchN(1, [_#defs."/$defs/site_config/$defs/application_stack", list.MaxItems(1) & [..._#defs."/$defs/site_config/$defs/application_stack"]])
		container_registry_use_managed_identity?: bool
		default_documents?: [...string]
		auto_heal_setting?: matchN(1, [_#defs."/$defs/site_config/$defs/auto_heal_setting", list.MaxItems(1) & [..._#defs."/$defs/site_config/$defs/auto_heal_setting"]])
		detailed_error_logging_enabled?: bool
		ftps_state?:                     string
		health_check_path?:              string
		http2_enabled?:                  bool
		ip_restriction_default_action?:  string
		linux_fx_version?:               string
		load_balancing_mode?:            string
		local_mysql_enabled?:            bool
		cors?: matchN(1, [_#defs."/$defs/site_config/$defs/cors", list.MaxItems(1) & [..._#defs."/$defs/site_config/$defs/cors"]])
		managed_pipeline_mode?:    string
		minimum_tls_version?:      string
		remote_debugging_enabled?: bool
		handler_mapping?: matchN(1, [_#defs."/$defs/site_config/$defs/handler_mapping", [..._#defs."/$defs/site_config/$defs/handler_mapping"]])
		remote_debugging_version?: string

		// Should all outbound traffic to have Virtual Network Security
		// Groups and User Defined Routes applied? Defaults to `false`.
		vnet_route_all_enabled?:            bool
		scm_ip_restriction_default_action?: string
		scm_minimum_tls_version?:           string
		scm_type?:                          string
		scm_use_main_ip_restriction?:       bool
		use_32_bit_worker?:                 bool
		ip_restriction?: matchN(1, [_#defs."/$defs/site_config/$defs/ip_restriction", [..._#defs."/$defs/site_config/$defs/ip_restriction"]])
		scm_ip_restriction?: matchN(1, [_#defs."/$defs/site_config/$defs/scm_ip_restriction", [..._#defs."/$defs/site_config/$defs/scm_ip_restriction"]])
		websockets_enabled?: bool
		windows_fx_version?: string
		worker_count?:       number
		virtual_application?: matchN(1, [_#defs."/$defs/site_config/$defs/virtual_application", [..._#defs."/$defs/site_config/$defs/virtual_application"]])
	})

	#sticky_settings: close({
		app_setting_names?: [...string]
		connection_string_names?: [...string]
	})

	#storage_account: close({
		access_key!:   string
		account_name!: string
		mount_path?:   string
		name!:         string
		share_name!:   string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/auth_settings/$defs/active_directory": close({
		// Specifies a list of Allowed audience values to consider when
		// validating JWTs issued by Azure Active Directory.
		allowed_audiences?: [...string]

		// The ID of the Client to use to authenticate with Azure Active
		// Directory.
		client_id!: string

		// The Client Secret for the Client ID. Cannot be used with
		// `client_secret_setting_name`.
		client_secret?: string

		// The App Setting name that contains the client secret of the
		// Client. Cannot be used with `client_secret`.
		client_secret_setting_name?: string
	})

	_#defs: "/$defs/auth_settings/$defs/facebook": close({
		// The App ID of the Facebook app used for login.
		app_id!: string

		// The App Secret of the Facebook app used for Facebook Login.
		// Cannot be specified with `app_secret_setting_name`.
		app_secret?: string

		// The app setting name that contains the `app_secret` value used
		// for Facebook Login. Cannot be specified with `app_secret`.
		app_secret_setting_name?: string

		// Specifies a list of OAuth 2.0 scopes to be requested as part of
		// Facebook Login authentication.
		oauth_scopes?: [...string]
	})

	_#defs: "/$defs/auth_settings/$defs/github": close({
		// The ID of the GitHub app used for login.
		client_id!: string

		// The Client Secret of the GitHub app used for GitHub Login.
		// Cannot be specified with `client_secret_setting_name`.
		client_secret?: string

		// The app setting name that contains the `client_secret` value
		// used for GitHub Login. Cannot be specified with
		// `client_secret`.
		client_secret_setting_name?: string

		// Specifies a list of OAuth 2.0 scopes that will be requested as
		// part of GitHub Login authentication.
		oauth_scopes?: [...string]
	})

	_#defs: "/$defs/auth_settings/$defs/google": close({
		// The OpenID Connect Client ID for the Google web application.
		client_id!: string

		// The client secret associated with the Google web application.
		// Cannot be specified with `client_secret_setting_name`.
		client_secret?: string

		// The app setting name that contains the `client_secret` value
		// used for Google Login. Cannot be specified with
		// `client_secret`.
		client_secret_setting_name?: string

		// Specifies a list of OAuth 2.0 scopes that will be requested as
		// part of Google Sign-In authentication. If not specified,
		// "openid", "profile", and "email" are used as default scopes.
		oauth_scopes?: [...string]
	})

	_#defs: "/$defs/auth_settings/$defs/microsoft": close({
		// The OAuth 2.0 client ID that was created for the app used for
		// authentication.
		client_id!: string

		// The OAuth 2.0 client secret that was created for the app used
		// for authentication. Cannot be specified with
		// `client_secret_setting_name`.
		client_secret?: string

		// The app setting name containing the OAuth 2.0 client secret
		// that was created for the app used for authentication. Cannot
		// be specified with `client_secret`.
		client_secret_setting_name?: string

		// The list of OAuth 2.0 scopes that will be requested as part of
		// Microsoft Account authentication. If not specified, `wl.basic`
		// is used as the default scope.
		oauth_scopes?: [...string]
	})

	_#defs: "/$defs/auth_settings/$defs/twitter": close({
		// The OAuth 1.0a consumer key of the Twitter application used for
		// sign-in.
		consumer_key!: string

		// The OAuth 1.0a consumer secret of the Twitter application used
		// for sign-in. Cannot be specified with
		// `consumer_secret_setting_name`.
		consumer_secret?: string

		// The app setting name that contains the OAuth 1.0a consumer
		// secret of the Twitter application used for sign-in. Cannot be
		// specified with `consumer_secret`.
		consumer_secret_setting_name?: string
	})

	_#defs: "/$defs/auth_settings_v2/$defs/active_directory_v2": close({
		// The list of allowed Applications for the Default Authorisation
		// Policy.
		allowed_applications?: [...string]

		// Specifies a list of Allowed audience values to consider when
		// validating JWTs issued by Azure Active Directory.
		allowed_audiences?: [...string]

		// The list of allowed Group Names for the Default Authorisation
		// Policy.
		allowed_groups?: [...string]

		// The list of allowed Identities for the Default Authorisation
		// Policy.
		allowed_identities?: [...string]

		// The ID of the Client to use to authenticate with Azure Active
		// Directory.
		client_id!: string

		// The thumbprint of the certificate used for signing purposes.
		client_secret_certificate_thumbprint?: string

		// The App Setting name that contains the client secret of the
		// Client.
		client_secret_setting_name?: string

		// A list of Allowed Client Applications in the JWT Claim.
		jwt_allowed_client_applications?: [...string]

		// A list of Allowed Groups in the JWT Claim.
		jwt_allowed_groups?: [...string]

		// A map of key-value pairs to send to the Authorisation Endpoint
		// when a user logs in.
		login_parameters?: [string]: string

		// The Azure Tenant Endpoint for the Authenticating Tenant. e.g.
		// `https://login.microsoftonline.com/v2.0/{tenant-guid}/`.
		tenant_auth_endpoint!: string

		// Should the www-authenticate provider should be omitted from the
		// request? Defaults to `false`
		www_authentication_disabled?: bool
	})

	_#defs: "/$defs/auth_settings_v2/$defs/apple_v2": close({
		// The OpenID Connect Client ID for the Apple web application.
		client_id!: string

		// The app setting name that contains the `client_secret` value
		// used for Apple Login.
		client_secret_setting_name!: string
		login_scopes?: [...string]
	})

	_#defs: "/$defs/auth_settings_v2/$defs/azure_static_web_app_v2": close({
		// The ID of the Client to use to authenticate with Azure Static
		// Web App Authentication.
		client_id!: string
	})

	_#defs: "/$defs/auth_settings_v2/$defs/custom_oidc_v2": close({
		// The endpoint to make the Authorisation Request.
		authorisation_endpoint?: string

		// The endpoint that provides the keys necessary to validate the
		// token.
		certification_uri?: string

		// The Client Credential Method used. Currently the only supported
		// value is `ClientSecretPost`.
		client_credential_method?: string

		// The ID of the Client to use to authenticate with this Custom
		// OIDC.
		client_id!: string

		// The App Setting name that contains the secret for this Custom
		// OIDC Client.
		client_secret_setting_name?: string

		// The endpoint that issued the Token.
		issuer_endpoint?: string

		// The name of the Custom OIDC Authentication Provider.
		name!: string

		// The name of the claim that contains the users name.
		name_claim_type?: string

		// The endpoint that contains all the configuration endpoints for
		// this Custom OIDC provider.
		openid_configuration_endpoint!: string

		// The list of the scopes that should be requested while
		// authenticating.
		scopes?: [...string]

		// The endpoint used to request a Token.
		token_endpoint?: string
	})

	_#defs: "/$defs/auth_settings_v2/$defs/facebook_v2": close({
		// The App ID of the Facebook app used for login.
		app_id!: string

		// The app setting name that contains the `app_secret` value used
		// for Facebook Login.
		app_secret_setting_name!: string

		// The version of the Facebook API to be used while logging in.
		graph_api_version?: string

		// Specifies a list of scopes to be requested as part of Facebook
		// Login authentication.
		login_scopes?: [...string]
	})

	_#defs: "/$defs/auth_settings_v2/$defs/github_v2": close({
		// The ID of the GitHub app used for login.
		client_id!: string

		// The app setting name that contains the `client_secret` value
		// used for GitHub Login.
		client_secret_setting_name!: string

		// Specifies a list of OAuth 2.0 scopes that will be requested as
		// part of GitHub Login authentication.
		login_scopes?: [...string]
	})

	_#defs: "/$defs/auth_settings_v2/$defs/google_v2": close({
		// Specifies a list of Allowed Audiences that will be requested as
		// part of Google Sign-In authentication.
		allowed_audiences?: [...string]

		// The OpenID Connect Client ID for the Google web application.
		client_id!: string

		// The app setting name that contains the `client_secret` value
		// used for Google Login.
		client_secret_setting_name!: string

		// Specifies a list of Login scopes that will be requested as part
		// of Google Sign-In authentication.
		login_scopes?: [...string]
	})

	_#defs: "/$defs/auth_settings_v2/$defs/login": close({
		// External URLs that can be redirected to as part of logging in
		// or logging out of the app. This is an advanced setting
		// typically only needed by Windows Store application backends.
		// **Note:** URLs within the current domain are always implicitly
		// allowed.
		allowed_external_redirect_urls?: [...string]

		// The method by which cookies expire. Possible values include:
		// `FixedTime`, and `IdentityProviderDerived`. Defaults to
		// `FixedTime`.
		cookie_expiration_convention?: string

		// The time after the request is made when the session cookie
		// should expire. Defaults to `08:00:00`.
		cookie_expiration_time?: string

		// The endpoint to which logout requests should be made.
		logout_endpoint?: string

		// The time after the request is made when the nonce should
		// expire. Defaults to `00:05:00`.
		nonce_expiration_time?: string

		// Should the fragments from the request be preserved after the
		// login request is made. Defaults to `false`.
		preserve_url_fragments_for_logins?: bool

		// The number of hours after session token expiration that a
		// session token can be used to call the token refresh API.
		// Defaults to `72` hours.
		token_refresh_extension_time?: number

		// Should the Token Store configuration Enabled. Defaults to
		// `false`
		token_store_enabled?: bool

		// The directory path in the App Filesystem in which the tokens
		// will be stored.
		token_store_path?: string

		// The name of the app setting which contains the SAS URL of the
		// blob storage containing the tokens.
		token_store_sas_setting_name?: string

		// Should the nonce be validated while completing the login flow.
		// Defaults to `true`.
		validate_nonce?: bool
	})

	_#defs: "/$defs/auth_settings_v2/$defs/microsoft_v2": close({
		// Specifies a list of Allowed Audiences that will be requested as
		// part of Microsoft Sign-In authentication.
		allowed_audiences?: [...string]

		// The OAuth 2.0 client ID that was created for the app used for
		// authentication.
		client_id!: string

		// The app setting name containing the OAuth 2.0 client secret
		// that was created for the app used for authentication.
		client_secret_setting_name!: string

		// The list of Login scopes that will be requested as part of
		// Microsoft Account authentication.
		login_scopes?: [...string]
	})

	_#defs: "/$defs/auth_settings_v2/$defs/twitter_v2": close({
		// The OAuth 1.0a consumer key of the Twitter application used for
		// sign-in.
		consumer_key!: string

		// The app setting name that contains the OAuth 1.0a consumer
		// secret of the Twitter application used for sign-in.
		consumer_secret_setting_name!: string
	})

	_#defs: "/$defs/backup/$defs/schedule": close({
		// How often the backup should be executed (e.g. for weekly
		// backup, this should be set to `7` and `frequency_unit` should
		// be set to `Day`).
		frequency_interval!: number

		// The unit of time for how often the backup should take place.
		// Possible values include: `Day` and `Hour`.
		frequency_unit!: string

		// Should the service keep at least one backup, regardless of age
		// of backup. Defaults to `false`.
		keep_at_least_one_backup?: bool

		// The time the backup was last attempted.
		last_execution_time?: string

		// After how many days backups should be deleted.
		retention_period_days?: number

		// When the schedule should start working in RFC-3339 format.
		start_time?: string
	})

	_#defs: "/$defs/logs/$defs/application_logs": close({
		azure_blob_storage?: matchN(1, [_#defs."/$defs/logs/$defs/application_logs/$defs/azure_blob_storage", list.MaxItems(1) & [..._#defs."/$defs/logs/$defs/application_logs/$defs/azure_blob_storage"]])
		file_system_level!: string
	})

	_#defs: "/$defs/logs/$defs/application_logs/$defs/azure_blob_storage": close({
		level!:             string
		retention_in_days!: number
		sas_url!:           string
	})

	_#defs: "/$defs/logs/$defs/http_logs": close({
		azure_blob_storage?: matchN(1, [_#defs."/$defs/logs/$defs/http_logs/$defs/azure_blob_storage", list.MaxItems(1) & [..._#defs."/$defs/logs/$defs/http_logs/$defs/azure_blob_storage"]])
		file_system?: matchN(1, [_#defs."/$defs/logs/$defs/http_logs/$defs/file_system", list.MaxItems(1) & [..._#defs."/$defs/logs/$defs/http_logs/$defs/file_system"]])
	})

	_#defs: "/$defs/logs/$defs/http_logs/$defs/azure_blob_storage": close({
		retention_in_days?: number
		sas_url!:           string
	})

	_#defs: "/$defs/logs/$defs/http_logs/$defs/file_system": close({
		retention_in_days!: number
		retention_in_mb!:   number
	})

	_#defs: "/$defs/site_config/$defs/application_stack": close({
		// The version of DotNetCore to use.
		dotnet_core_version?:      string
		current_stack?:            string
		docker_image_name?:        string
		docker_registry_password?: string
		docker_registry_url?:      string
		docker_registry_username?: string
		dotnet_version?:           string

		// Should the application use the embedded web server for the
		// version of Java in use.
		java_embedded_server_enabled?: bool
		java_version?:                 string
		node_version?:                 string
		php_version?:                  string
		python?:                       bool
		tomcat_version?:               string
	})

	_#defs: "/$defs/site_config/$defs/auto_heal_setting": close({
		action!: matchN(1, [_#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/action"]])
		trigger!: matchN(1, [_#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/trigger", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/trigger"]])
	})

	_#defs: "/$defs/site_config/$defs/auto_heal_setting/$defs/action": close({
		custom_action?: matchN(1, [_#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/action/$defs/custom_action", list.MaxItems(1) & [..._#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/action/$defs/custom_action"]])
		action_type!:                    string
		minimum_process_execution_time?: string
	})

	_#defs: "/$defs/site_config/$defs/auto_heal_setting/$defs/action/$defs/custom_action": close({
		executable!: string
		parameters?: string
	})

	_#defs: "/$defs/site_config/$defs/auto_heal_setting/$defs/trigger": close({
		requests?: matchN(1, [_#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/trigger/$defs/requests", list.MaxItems(1) & [..._#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/trigger/$defs/requests"]])
		slow_request?: matchN(1, [_#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/trigger/$defs/slow_request", list.MaxItems(1) & [..._#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/trigger/$defs/slow_request"]])
		slow_request_with_path?: matchN(1, [_#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/trigger/$defs/slow_request_with_path", [..._#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/trigger/$defs/slow_request_with_path"]])
		status_code?: matchN(1, [_#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/trigger/$defs/status_code", [..._#defs."/$defs/site_config/$defs/auto_heal_setting/$defs/trigger/$defs/status_code"]])
		private_memory_kb?: number
	})

	_#defs: "/$defs/site_config/$defs/auto_heal_setting/$defs/trigger/$defs/requests": close({
		count!:    number
		interval!: string
	})

	_#defs: "/$defs/site_config/$defs/auto_heal_setting/$defs/trigger/$defs/slow_request": close({
		count!:      number
		interval!:   string
		time_taken!: string
	})

	_#defs: "/$defs/site_config/$defs/auto_heal_setting/$defs/trigger/$defs/slow_request_with_path": close({
		count!:      number
		interval!:   string
		path?:       string
		time_taken!: string
	})

	_#defs: "/$defs/site_config/$defs/auto_heal_setting/$defs/trigger/$defs/status_code": close({
		count!:             number
		interval!:          string
		path?:              string
		status_code_range!: string
		sub_status?:        number
		win32_status_code?: number
	})

	_#defs: "/$defs/site_config/$defs/cors": close({
		// Specifies a list of origins that should be allowed to make
		// cross-origin calls.
		allowed_origins?: [...string]

		// Are credentials allowed in CORS requests? Defaults to `false`.
		support_credentials?: bool
	})

	_#defs: "/$defs/site_config/$defs/handler_mapping": close({
		arguments?:             string
		extension!:             string
		script_processor_path!: string
	})

	_#defs: "/$defs/site_config/$defs/ip_restriction": close({
		// The action to take. Possible values are `Allow` or `Deny`.
		action?: string

		// The description of the IP restriction rule.
		description?: string

		// The CIDR notation of the IP or IP Range to match. For example:
		// `10.0.0.0/24` or `192.168.10.1/32` or `fe80::/64` or
		// `13.107.6.152/31,13.107.128.0/22`
		ip_address?: string

		// The name which should be used for this `ip_restriction`.
		name?: string

		// The priority value of this `ip_restriction`.
		priority?: number
		headers?: [...close({
			x_azure_fdid?: [...string]
			x_fd_health_probe?: [...string]
			x_forwarded_for?: [...string]
			x_forwarded_host?: [...string]
		})]

		// The Service Tag used for this IP Restriction.
		service_tag?: string

		// The Virtual Network Subnet ID used for this IP Restriction.
		virtual_network_subnet_id?: string
	})

	_#defs: "/$defs/site_config/$defs/scm_ip_restriction": close({
		// The action to take. Possible values are `Allow` or `Deny`.
		action?: string

		// The description of the IP restriction rule.
		description?: string

		// The CIDR notation of the IP or IP Range to match. For example:
		// `10.0.0.0/24` or `192.168.10.1/32` or `fe80::/64` or
		// `13.107.6.152/31,13.107.128.0/22`
		ip_address?: string

		// The name which should be used for this `ip_restriction`.
		name?: string

		// The priority value of this `ip_restriction`.
		priority?: number
		headers?: [...close({
			x_azure_fdid?: [...string]
			x_fd_health_probe?: [...string]
			x_forwarded_for?: [...string]
			x_forwarded_host?: [...string]
		})]

		// The Service Tag used for this IP Restriction.
		service_tag?: string

		// The Virtual Network Subnet ID used for this IP Restriction.
		virtual_network_subnet_id?: string
	})

	_#defs: "/$defs/site_config/$defs/virtual_application": close({
		virtual_directory?: matchN(1, [_#defs."/$defs/site_config/$defs/virtual_application/$defs/virtual_directory", [..._#defs."/$defs/site_config/$defs/virtual_application/$defs/virtual_directory"]])
		physical_path!: string
		preload!:       bool
		virtual_path!:  string
	})

	_#defs: "/$defs/site_config/$defs/virtual_application/$defs/virtual_directory": close({
		physical_path?: string
		virtual_path?:  string
	})
}
