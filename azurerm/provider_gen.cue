package azurerm

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/provider")
	close({
		// The Azure DevOps Pipeline Service Connection ID.
		ado_pipeline_service_connection_id?: string
		auxiliary_tenant_ids?: [...string]

		// Base64 encoded PKCS#12 certificate bundle to use when
		// authenticating as a Service Principal using a Client
		// Certificate
		client_certificate?: string

		// The password associated with the Client Certificate. For use
		// when authenticating as a Service Principal using a Client
		// Certificate
		client_certificate_password?: string

		// The path to the Client Certificate associated with the Service
		// Principal for use when authenticating as a Service Principal
		// using a Client Certificate.
		client_certificate_path?: string

		// The Client ID which should be used.
		client_id?: string

		// The path to a file containing the Client ID which should be
		// used.
		client_id_file_path?: string

		// The Client Secret which should be used. For use When
		// authenticating as a Service Principal using a Client Secret.
		client_secret?: string

		// The path to a file containing the Client Secret which should be
		// used. For use When authenticating as a Service Principal using
		// a Client Secret.
		client_secret_file_path?: string

		// This will disable the x-ms-correlation-request-id header.
		disable_correlation_request_id?: bool

		// This will disable the Terraform Partner ID which is used if a
		// custom `partner_id` isn't specified.
		disable_terraform_partner_id?: bool

		// The Cloud Environment which should be used. Possible values are
		// public, usgovernment, and china. Defaults to public. Not used
		// and should not be specified when `metadata_host` is specified.
		environment?: string

		// The Hostname which should be used for the Azure Metadata
		// Service.
		metadata_host?: string

		// The API version to use for Managed Service Identity (IMDS) -
		// for cases where the default API version is not supported by
		// the endpoint. e.g. for Azure Container Apps.
		msi_api_version?: string

		// The path to a custom endpoint for Managed Service Identity - in
		// most circumstances this should be detected automatically.
		msi_endpoint?: string

		// The bearer token for the request to the OIDC provider. For use
		// when authenticating as a Service Principal using OpenID
		// Connect.
		oidc_request_token?: string

		// The URL for the OIDC provider from which to request an ID
		// token. For use when authenticating as a Service Principal
		// using OpenID Connect.
		oidc_request_url?: string
		features?: matchN(1, [#features, [...#features]])

		// The OIDC ID token for use when authenticating as a Service
		// Principal using OpenID Connect.
		oidc_token?: string

		// The path to a file containing an OIDC ID token for use when
		// authenticating as a Service Principal using OpenID Connect.
		oidc_token_file_path?: string

		// A GUID/UUID that is registered with Microsoft to facilitate
		// partner resource usage attribution.
		partner_id?: string

		// The set of Resource Providers which should be automatically
		// registered for the subscription.
		resource_provider_registrations?: string

		// A list of Resource Providers to explicitly register for the
		// subscription, in addition to those specified by the
		// `resource_provider_registrations` property.
		resource_providers_to_register?: [...string]

		// Should the AzureRM Provider use Azure AD Authentication when
		// accessing the Storage Data Plane APIs?
		storage_use_azuread?: bool

		// The Subscription ID which should be used.
		subscription_id?: string

		// The Tenant ID which should be used.
		tenant_id?: string

		// Allow Azure AKS Workload Identity to be used for
		// Authentication.
		use_aks_workload_identity?: bool

		// Allow Azure CLI to be used for Authentication.
		use_cli?: bool

		// Allow Managed Service Identity to be used for Authentication.
		use_msi?: bool

		// Allow OpenID Connect to be used for authentication
		use_oidc?: bool
	})

	#features: close({
		api_management?: matchN(1, [_#defs."/$defs/features/$defs/api_management", [..._#defs."/$defs/features/$defs/api_management"]])
		app_configuration?: matchN(1, [_#defs."/$defs/features/$defs/app_configuration", [..._#defs."/$defs/features/$defs/app_configuration"]])
		application_insights?: matchN(1, [_#defs."/$defs/features/$defs/application_insights", [..._#defs."/$defs/features/$defs/application_insights"]])
		cognitive_account?: matchN(1, [_#defs."/$defs/features/$defs/cognitive_account", [..._#defs."/$defs/features/$defs/cognitive_account"]])
		databricks_workspace?: matchN(1, [_#defs."/$defs/features/$defs/databricks_workspace", [..._#defs."/$defs/features/$defs/databricks_workspace"]])
		key_vault?: matchN(1, [_#defs."/$defs/features/$defs/key_vault", [..._#defs."/$defs/features/$defs/key_vault"]])
		log_analytics_workspace?: matchN(1, [_#defs."/$defs/features/$defs/log_analytics_workspace", [..._#defs."/$defs/features/$defs/log_analytics_workspace"]])
		machine_learning?: matchN(1, [_#defs."/$defs/features/$defs/machine_learning", [..._#defs."/$defs/features/$defs/machine_learning"]])
		managed_disk?: matchN(1, [_#defs."/$defs/features/$defs/managed_disk", [..._#defs."/$defs/features/$defs/managed_disk"]])
		netapp?: matchN(1, [_#defs."/$defs/features/$defs/netapp", [..._#defs."/$defs/features/$defs/netapp"]])
		postgresql_flexible_server?: matchN(1, [_#defs."/$defs/features/$defs/postgresql_flexible_server", [..._#defs."/$defs/features/$defs/postgresql_flexible_server"]])
		recovery_service?: matchN(1, [_#defs."/$defs/features/$defs/recovery_service", [..._#defs."/$defs/features/$defs/recovery_service"]])
		recovery_services_vaults?: matchN(1, [_#defs."/$defs/features/$defs/recovery_services_vaults", [..._#defs."/$defs/features/$defs/recovery_services_vaults"]])
		resource_group?: matchN(1, [_#defs."/$defs/features/$defs/resource_group", [..._#defs."/$defs/features/$defs/resource_group"]])
		storage?: matchN(1, [_#defs."/$defs/features/$defs/storage", [..._#defs."/$defs/features/$defs/storage"]])
		subscription?: matchN(1, [_#defs."/$defs/features/$defs/subscription", [..._#defs."/$defs/features/$defs/subscription"]])
		template_deployment?: matchN(1, [_#defs."/$defs/features/$defs/template_deployment", [..._#defs."/$defs/features/$defs/template_deployment"]])
		virtual_machine?: matchN(1, [_#defs."/$defs/features/$defs/virtual_machine", [..._#defs."/$defs/features/$defs/virtual_machine"]])
		virtual_machine_scale_set?: matchN(1, [_#defs."/$defs/features/$defs/virtual_machine_scale_set", [..._#defs."/$defs/features/$defs/virtual_machine_scale_set"]])
	})

	_#defs: "/$defs/features/$defs/api_management": close({
		purge_soft_delete_on_destroy?: bool
		recover_soft_deleted?:         bool
	})

	_#defs: "/$defs/features/$defs/app_configuration": close({
		purge_soft_delete_on_destroy?: bool
		recover_soft_deleted?:         bool
	})

	_#defs: "/$defs/features/$defs/application_insights": close({
		disable_generated_rule?: bool
	})

	_#defs: "/$defs/features/$defs/cognitive_account": close({
		purge_soft_delete_on_destroy?: bool
	})

	_#defs: "/$defs/features/$defs/databricks_workspace": close({
		// When enabled, the managed resource group that contains the
		// Unity Catalog data will be forcibly deleted when the workspace
		// is destroyed, regardless of contents.
		force_delete?: bool
	})

	_#defs: "/$defs/features/$defs/key_vault": close({
		// When enabled soft-deleted `azurerm_key_vault` resources will be
		// permanently deleted (e.g purged), when destroyed
		purge_soft_delete_on_destroy?: bool

		// When enabled soft-deleted `azurerm_key_vault_certificate`
		// resources will be permanently deleted (e.g purged), when
		// destroyed
		purge_soft_deleted_certificates_on_destroy?: bool

		// When enabled soft-deleted
		// `azurerm_key_vault_managed_hardware_security_module_key`
		// resources will be permanently deleted (e.g purged), when
		// destroyed
		purge_soft_deleted_hardware_security_module_keys_on_destroy?: bool

		// When enabled soft-deleted
		// `azurerm_key_vault_managed_hardware_security_module` resources
		// will be permanently deleted (e.g purged), when destroyed
		purge_soft_deleted_hardware_security_modules_on_destroy?: bool

		// When enabled soft-deleted `azurerm_key_vault_key` resources
		// will be permanently deleted (e.g purged), when destroyed
		purge_soft_deleted_keys_on_destroy?: bool

		// When enabled soft-deleted `azurerm_key_vault_secret` resources
		// will be permanently deleted (e.g purged), when destroyed
		purge_soft_deleted_secrets_on_destroy?: bool

		// When enabled soft-deleted `azurerm_key_vault_certificate`
		// resources will be restored, instead of creating new ones
		recover_soft_deleted_certificates?: bool

		// When enabled soft-deleted
		// `azurerm_key_vault_managed_hardware_security_module_key`
		// resources will be restored, instead of creating new ones
		recover_soft_deleted_hardware_security_module_keys?: bool

		// When enabled soft-deleted `azurerm_key_vault` resources will be
		// restored, instead of creating new ones
		recover_soft_deleted_key_vaults?: bool

		// When enabled soft-deleted `azurerm_key_vault_key` resources
		// will be restored, instead of creating new ones
		recover_soft_deleted_keys?: bool

		// When enabled soft-deleted `azurerm_key_vault_secret` resources
		// will be restored, instead of creating new ones
		recover_soft_deleted_secrets?: bool
	})

	_#defs: "/$defs/features/$defs/log_analytics_workspace": close({
		permanently_delete_on_destroy?: bool
	})

	_#defs: "/$defs/features/$defs/machine_learning": close({
		purge_soft_deleted_workspace_on_destroy?: bool
	})

	_#defs: "/$defs/features/$defs/managed_disk": close({
		expand_without_downtime?: bool
	})

	_#defs: "/$defs/features/$defs/netapp": close({
		// When enabled, backups will be deleted when the
		// `azurerm_netapp_backup_vault` resource is destroyed
		delete_backups_on_backup_vault_destroy?: bool

		// When enabled, the volume will not be destroyed, safeguarding
		// from severe data loss
		prevent_volume_destruction?: bool
	})

	_#defs: "/$defs/features/$defs/postgresql_flexible_server": close({
		restart_server_on_configuration_value_change?: bool
	})

	_#defs: "/$defs/features/$defs/recovery_service": close({
		purge_protected_items_from_vault_on_destroy?:             bool
		vm_backup_stop_protection_and_retain_data_on_destroy?:    bool
		vm_backup_suspend_protection_and_retain_data_on_destroy?: bool
	})

	_#defs: "/$defs/features/$defs/recovery_services_vaults": close({
		recover_soft_deleted_backup_protected_vm?: bool
	})

	_#defs: "/$defs/features/$defs/resource_group": close({
		prevent_deletion_if_contains_resources?: bool
	})

	_#defs: "/$defs/features/$defs/storage": close({
		data_plane_available?: bool
	})

	_#defs: "/$defs/features/$defs/subscription": close({
		prevent_cancellation_on_destroy?: bool
	})

	_#defs: "/$defs/features/$defs/template_deployment": close({
		delete_nested_items_during_deletion!: bool
	})

	_#defs: "/$defs/features/$defs/virtual_machine": close({
		delete_os_disk_on_deletion?:            bool
		detach_implicit_data_disk_on_deletion?: bool
		skip_shutdown_and_force_delete?:        bool
	})

	_#defs: "/$defs/features/$defs/virtual_machine_scale_set": close({
		force_delete?:                  bool
		reimage_on_manual_upgrade?:     bool
		roll_instances_when_required?:  bool
		scale_to_zero_before_deletion?: bool
	})
}
