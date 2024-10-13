package res

import "list"

#aws_grafana_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_grafana_workspace")
	account_access_type!: string
	arn?:                 string
	authentication_providers!: [...string]
	configuration?: string
	data_sources?: [...string]
	description?:     string
	endpoint?:        string
	grafana_version?: string
	id?:              string
	name?:            string
	notification_destinations?: [...string]
	organization_role_name?: string
	organizational_units?: [...string]
	permission_type!:           string
	role_arn?:                  string
	saml_configuration_status?: string
	stack_set_name?:            string
	tags?: [string]:     string
	tags_all?: [string]: string
	network_access_control?: #network_access_control | list.MaxItems(1) & [...#network_access_control]
	timeouts?: #timeouts
	vpc_configuration?: #vpc_configuration | list.MaxItems(1) & [...#vpc_configuration]

	#network_access_control: {
		prefix_list_ids!: [...string]
		vpce_ids!: [...string]
	}

	#timeouts: {
		create?: string
		update?: string
	}

	#vpc_configuration: {
		security_group_ids!: [...string]
		subnet_ids!: [...string]
	}
}
