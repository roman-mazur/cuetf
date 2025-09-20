package res

import "list"

#azurerm_mssql_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_server")
	close({
		administrator_login?:                      string
		administrator_login_password?:             string
		administrator_login_password_wo?:          string
		administrator_login_password_wo_version?:  number
		connection_policy?:                        string
		express_vulnerability_assessment_enabled?: bool
		fully_qualified_domain_name?:              string
		id?:                                       string
		location!:                                 string
		minimum_tls_version?:                      string
		name!:                                     string
		azuread_administrator?: matchN(1, [#azuread_administrator, list.MaxItems(1) & [...#azuread_administrator]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		outbound_network_restriction_enabled?: bool
		primary_user_assigned_identity_id?:    string
		public_network_access_enabled?:        bool
		resource_group_name!:                  string
		restorable_dropped_database_ids?: [...string]
		tags?: [string]: string
		transparent_data_encryption_key_vault_key_id?: string
		timeouts?:                                     #timeouts
		version!:                                      string
	})

	#azuread_administrator: close({
		azuread_authentication_only?: bool
		login_username!:              string
		object_id!:                   string
		tenant_id?:                   string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
