package res

import "list"

#aws_workspaces_directory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_workspaces_directory")
	close({
		alias?:              string
		customer_user_name?: string
		directory_id?:       string
		directory_name?:     string
		directory_type?:     string
		dns_ip_addresses?: [...string]
		iam_role_id?: string
		id?:          string
		ip_group_ids?: [...string]
		active_directory_config?: matchN(1, [#active_directory_config, list.MaxItems(1) & [...#active_directory_config]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		registration_code?: string
		subnet_ids?: [...string]
		certificate_based_auth_properties?: matchN(1, [#certificate_based_auth_properties, list.MaxItems(1) & [...#certificate_based_auth_properties]])
		tags?: [string]:     string
		tags_all?: [string]: string
		tenancy?:                         string
		user_identity_type?:              string
		workspace_directory_description?: string
		workspace_directory_name?:        string
		workspace_security_group_id?:     string
		saml_properties?: matchN(1, [#saml_properties, list.MaxItems(1) & [...#saml_properties]])
		self_service_permissions?: matchN(1, [#self_service_permissions, list.MaxItems(1) & [...#self_service_permissions]])
		workspace_access_properties?: matchN(1, [#workspace_access_properties, list.MaxItems(1) & [...#workspace_access_properties]])
		workspace_type?: string
		workspace_creation_properties?: matchN(1, [#workspace_creation_properties, list.MaxItems(1) & [...#workspace_creation_properties]])
	})

	#active_directory_config: close({
		domain_name!:                string
		service_account_secret_arn!: string
	})

	#certificate_based_auth_properties: close({
		certificate_authority_arn?: string
		status?:                    string
	})

	#saml_properties: close({
		relay_state_parameter_name?: string
		status?:                     string
		user_access_url?:            string
	})

	#self_service_permissions: close({
		change_compute_type?:  bool
		increase_volume_size?: bool
		rebuild_workspace?:    bool
		restart_workspace?:    bool
		switch_running_mode?:  bool
	})

	#workspace_access_properties: close({
		device_type_android?:    string
		device_type_chromeos?:   string
		device_type_ios?:        string
		device_type_linux?:      string
		device_type_osx?:        string
		device_type_web?:        string
		device_type_windows?:    string
		device_type_zeroclient?: string
	})

	#workspace_creation_properties: close({
		custom_security_group_id?:            string
		default_ou?:                          string
		enable_internet_access?:              bool
		enable_maintenance_mode?:             bool
		user_enabled_as_local_administrator?: bool
	})
}
