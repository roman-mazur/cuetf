package res

import "list"

#aws_sagemaker_notebook_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_notebook_instance")
	accelerator_types?: [...string]
	additional_code_repositories?: [...string]
	arn?:                     string
	default_code_repository?: string
	direct_internet_access?:  string
	id?:                      string
	instance_type!:           string
	kms_key_id?:              string
	lifecycle_config_name?:   string
	name!:                    string
	network_interface_id?:    string
	platform_identifier?:     string
	role_arn!:                string
	root_access?:             string
	security_groups?: [...string]
	subnet_id?: string
	tags?: [string]: string
	tags_all?: [string]: string
	url?:         string
	volume_size?: number
	instance_metadata_service_configuration?: #instance_metadata_service_configuration | list.MaxItems(1) & [...#instance_metadata_service_configuration]

	#instance_metadata_service_configuration: minimum_instance_metadata_service_version?: string
}
