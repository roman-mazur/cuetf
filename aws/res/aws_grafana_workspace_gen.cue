package res

import "list"

#aws_grafana_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_grafana_workspace")
	close({
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
		network_access_control?: matchN(1, [#network_access_control, list.MaxItems(1) & [...#network_access_control]])
		timeouts?:               #timeouts
		organization_role_name?: string
		vpc_configuration?: matchN(1, [#vpc_configuration, list.MaxItems(1) & [...#vpc_configuration]])
		organizational_units?: [...string]
		permission_type!:           string
		region?:                    string
		role_arn?:                  string
		saml_configuration_status?: string
		stack_set_name?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#network_access_control: close({
		prefix_list_ids!: [...string]
		vpce_ids!: [...string]
	})

	#timeouts: close({
		create?: string
		update?: string
	})

	#vpc_configuration: close({
		security_group_ids!: [...string]
		subnet_ids!: [...string]
	})
}
