package res

import "list"

#aws_sagemaker_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_model")
	close({
		arn?: string
		container?: matchN(1, [#container, [...#container]])
		enable_network_isolation?: bool
		execution_role_arn!:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		inference_execution_config?: matchN(1, [#inference_execution_config, list.MaxItems(1) & [...#inference_execution_config]])
		name?: string
		tags?: [string]: string
		primary_container?: matchN(1, [#primary_container, list.MaxItems(1) & [...#primary_container]])
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [...#vpc_config]])
		tags_all?: [string]: string
	})

	#container: close({
		container_hostname?: string
		image_config?: matchN(1, [_#defs."/$defs/container/$defs/image_config", list.MaxItems(1) & [..._#defs."/$defs/container/$defs/image_config"]])
		environment?: [string]: string
		image?:                        string
		inference_specification_name?: string
		mode?:                         string
		model_data_url?:               string
		model_package_name?:           string
		model_data_source?: matchN(1, [_#defs."/$defs/container/$defs/model_data_source", list.MaxItems(1) & [..._#defs."/$defs/container/$defs/model_data_source"]])
		multi_model_config?: matchN(1, [_#defs."/$defs/container/$defs/multi_model_config", list.MaxItems(1) & [..._#defs."/$defs/container/$defs/multi_model_config"]])
	})

	#inference_execution_config: close({
		mode!: string
	})

	#primary_container: close({
		container_hostname?: string
		image_config?: matchN(1, [_#defs."/$defs/primary_container/$defs/image_config", list.MaxItems(1) & [..._#defs."/$defs/primary_container/$defs/image_config"]])
		environment?: [string]: string
		image?:                        string
		inference_specification_name?: string
		mode?:                         string
		model_data_url?:               string
		model_package_name?:           string
		model_data_source?: matchN(1, [_#defs."/$defs/primary_container/$defs/model_data_source", list.MaxItems(1) & [..._#defs."/$defs/primary_container/$defs/model_data_source"]])
		multi_model_config?: matchN(1, [_#defs."/$defs/primary_container/$defs/multi_model_config", list.MaxItems(1) & [..._#defs."/$defs/primary_container/$defs/multi_model_config"]])
	})

	#vpc_config: close({
		security_group_ids!: [...string]
		subnets!: [...string]
	})

	_#defs: "/$defs/container/$defs/image_config": close({
		repository_auth_config?: matchN(1, [_#defs."/$defs/container/$defs/image_config/$defs/repository_auth_config", list.MaxItems(1) & [..._#defs."/$defs/container/$defs/image_config/$defs/repository_auth_config"]])
		repository_access_mode!: string
	})

	_#defs: "/$defs/container/$defs/image_config/$defs/repository_auth_config": close({
		repository_credentials_provider_arn!: string
	})

	_#defs: "/$defs/container/$defs/model_data_source": close({
		s3_data_source!: matchN(1, [_#defs."/$defs/container/$defs/model_data_source/$defs/s3_data_source", [_, ...] & [..._#defs."/$defs/container/$defs/model_data_source/$defs/s3_data_source"]])
	})

	_#defs: "/$defs/container/$defs/model_data_source/$defs/s3_data_source": close({
		model_access_config?: matchN(1, [_#defs."/$defs/container/$defs/model_data_source/$defs/s3_data_source/$defs/model_access_config", list.MaxItems(1) & [..._#defs."/$defs/container/$defs/model_data_source/$defs/s3_data_source/$defs/model_access_config"]])
		compression_type!: string
		s3_data_type!:     string
		s3_uri!:           string
	})

	_#defs: "/$defs/container/$defs/model_data_source/$defs/s3_data_source/$defs/model_access_config": close({
		accept_eula!: bool
	})

	_#defs: "/$defs/container/$defs/multi_model_config": close({
		model_cache_setting?: string
	})

	_#defs: "/$defs/primary_container/$defs/image_config": close({
		repository_auth_config?: matchN(1, [_#defs."/$defs/primary_container/$defs/image_config/$defs/repository_auth_config", list.MaxItems(1) & [..._#defs."/$defs/primary_container/$defs/image_config/$defs/repository_auth_config"]])
		repository_access_mode!: string
	})

	_#defs: "/$defs/primary_container/$defs/image_config/$defs/repository_auth_config": close({
		repository_credentials_provider_arn!: string
	})

	_#defs: "/$defs/primary_container/$defs/model_data_source": close({
		s3_data_source!: matchN(1, [_#defs."/$defs/primary_container/$defs/model_data_source/$defs/s3_data_source", [_, ...] & [..._#defs."/$defs/primary_container/$defs/model_data_source/$defs/s3_data_source"]])
	})

	_#defs: "/$defs/primary_container/$defs/model_data_source/$defs/s3_data_source": close({
		model_access_config?: matchN(1, [_#defs."/$defs/primary_container/$defs/model_data_source/$defs/s3_data_source/$defs/model_access_config", list.MaxItems(1) & [..._#defs."/$defs/primary_container/$defs/model_data_source/$defs/s3_data_source/$defs/model_access_config"]])
		compression_type!: string
		s3_data_type!:     string
		s3_uri!:           string
	})

	_#defs: "/$defs/primary_container/$defs/model_data_source/$defs/s3_data_source/$defs/model_access_config": close({
		accept_eula!: bool
	})

	_#defs: "/$defs/primary_container/$defs/multi_model_config": close({
		model_cache_setting?: string
	})
}
