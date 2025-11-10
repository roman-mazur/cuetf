package res

import "list"

#aws_apprunner_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apprunner_service")
	close({
		arn?: string
		encryption_configuration?: matchN(1, [#encryption_configuration, list.MaxItems(1) & [...#encryption_configuration]])
		auto_scaling_configuration_arn?: string
		id?:                             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		service_id?:   string
		service_name!: string
		service_url?:  string
		health_check_configuration?: matchN(1, [#health_check_configuration, list.MaxItems(1) & [...#health_check_configuration]])
		instance_configuration?: matchN(1, [#instance_configuration, list.MaxItems(1) & [...#instance_configuration]])
		status?: string
		network_configuration?: matchN(1, [#network_configuration, list.MaxItems(1) & [...#network_configuration]])
		observability_configuration?: matchN(1, [#observability_configuration, list.MaxItems(1) & [...#observability_configuration]])
		source_configuration!: matchN(1, [#source_configuration, list.MaxItems(1) & [_, ...] & [...#source_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#encryption_configuration: close({
		kms_key!: string
	})

	#health_check_configuration: close({
		healthy_threshold?:   number
		interval?:            number
		path?:                string
		protocol?:            string
		timeout?:             number
		unhealthy_threshold?: number
	})

	#instance_configuration: close({
		cpu?:               string
		instance_role_arn?: string
		memory?:            string
	})

	#network_configuration: close({
		egress_configuration?: matchN(1, [_#defs."/$defs/network_configuration/$defs/egress_configuration", list.MaxItems(1) & [..._#defs."/$defs/network_configuration/$defs/egress_configuration"]])
		ingress_configuration?: matchN(1, [_#defs."/$defs/network_configuration/$defs/ingress_configuration", list.MaxItems(1) & [..._#defs."/$defs/network_configuration/$defs/ingress_configuration"]])
		ip_address_type?: string
	})

	#observability_configuration: close({
		observability_configuration_arn?: string
		observability_enabled!:           bool
	})

	#source_configuration: close({
		authentication_configuration?: matchN(1, [_#defs."/$defs/source_configuration/$defs/authentication_configuration", list.MaxItems(1) & [..._#defs."/$defs/source_configuration/$defs/authentication_configuration"]])
		code_repository?: matchN(1, [_#defs."/$defs/source_configuration/$defs/code_repository", list.MaxItems(1) & [..._#defs."/$defs/source_configuration/$defs/code_repository"]])
		image_repository?: matchN(1, [_#defs."/$defs/source_configuration/$defs/image_repository", list.MaxItems(1) & [..._#defs."/$defs/source_configuration/$defs/image_repository"]])
		auto_deployments_enabled?: bool
	})

	_#defs: "/$defs/network_configuration/$defs/egress_configuration": close({
		egress_type?:       string
		vpc_connector_arn?: string
	})

	_#defs: "/$defs/network_configuration/$defs/ingress_configuration": close({
		is_publicly_accessible?: bool
	})

	_#defs: "/$defs/source_configuration/$defs/authentication_configuration": close({
		access_role_arn?: string
		connection_arn?:  string
	})

	_#defs: "/$defs/source_configuration/$defs/code_repository": close({
		code_configuration?: matchN(1, [_#defs."/$defs/source_configuration/$defs/code_repository/$defs/code_configuration", list.MaxItems(1) & [..._#defs."/$defs/source_configuration/$defs/code_repository/$defs/code_configuration"]])
		source_code_version!: matchN(1, [_#defs."/$defs/source_configuration/$defs/code_repository/$defs/source_code_version", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/source_configuration/$defs/code_repository/$defs/source_code_version"]])
		repository_url!:   string
		source_directory?: string
	})

	_#defs: "/$defs/source_configuration/$defs/code_repository/$defs/code_configuration": close({
		code_configuration_values?: matchN(1, [_#defs."/$defs/source_configuration/$defs/code_repository/$defs/code_configuration/$defs/code_configuration_values", list.MaxItems(1) & [..._#defs."/$defs/source_configuration/$defs/code_repository/$defs/code_configuration/$defs/code_configuration_values"]])
		configuration_source!: string
	})

	_#defs: "/$defs/source_configuration/$defs/code_repository/$defs/code_configuration/$defs/code_configuration_values": close({
		build_command?: string
		port?:          string
		runtime!:       string
		runtime_environment_secrets?: [string]:   string
		runtime_environment_variables?: [string]: string
		start_command?: string
	})

	_#defs: "/$defs/source_configuration/$defs/code_repository/$defs/source_code_version": close({
		type!:  string
		value!: string
	})

	_#defs: "/$defs/source_configuration/$defs/image_repository": close({
		image_configuration?: matchN(1, [_#defs."/$defs/source_configuration/$defs/image_repository/$defs/image_configuration", list.MaxItems(1) & [..._#defs."/$defs/source_configuration/$defs/image_repository/$defs/image_configuration"]])
		image_identifier!:      string
		image_repository_type!: string
	})

	_#defs: "/$defs/source_configuration/$defs/image_repository/$defs/image_configuration": close({
		port?: string
		runtime_environment_secrets?: [string]:   string
		runtime_environment_variables?: [string]: string
		start_command?: string
	})
}
