package res

#aws_inspector2_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_inspector2_filter")
	close({
		filter_criteria?: matchN(1, [#filter_criteria, [...#filter_criteria]])
		action!:      string
		arn?:         string
		description?: string
		name!:        string
		reason?:      string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#filter_criteria: close({
		aws_account_id?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/aws_account_id", [..._#defs."/$defs/filter_criteria/$defs/aws_account_id"]])
		code_vulnerability_detector_name?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/code_vulnerability_detector_name", [..._#defs."/$defs/filter_criteria/$defs/code_vulnerability_detector_name"]])
		code_vulnerability_detector_tags?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/code_vulnerability_detector_tags", [..._#defs."/$defs/filter_criteria/$defs/code_vulnerability_detector_tags"]])
		code_vulnerability_file_path?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/code_vulnerability_file_path", [..._#defs."/$defs/filter_criteria/$defs/code_vulnerability_file_path"]])
		component_id?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/component_id", [..._#defs."/$defs/filter_criteria/$defs/component_id"]])
		component_type?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/component_type", [..._#defs."/$defs/filter_criteria/$defs/component_type"]])
		ec2_instance_image_id?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/ec2_instance_image_id", [..._#defs."/$defs/filter_criteria/$defs/ec2_instance_image_id"]])
		ec2_instance_subnet_id?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/ec2_instance_subnet_id", [..._#defs."/$defs/filter_criteria/$defs/ec2_instance_subnet_id"]])
		ec2_instance_vpc_id?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/ec2_instance_vpc_id", [..._#defs."/$defs/filter_criteria/$defs/ec2_instance_vpc_id"]])
		ecr_image_architecture?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/ecr_image_architecture", [..._#defs."/$defs/filter_criteria/$defs/ecr_image_architecture"]])
		ecr_image_hash?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/ecr_image_hash", [..._#defs."/$defs/filter_criteria/$defs/ecr_image_hash"]])
		ecr_image_pushed_at?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/ecr_image_pushed_at", [..._#defs."/$defs/filter_criteria/$defs/ecr_image_pushed_at"]])
		ecr_image_registry?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/ecr_image_registry", [..._#defs."/$defs/filter_criteria/$defs/ecr_image_registry"]])
		ecr_image_repository_name?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/ecr_image_repository_name", [..._#defs."/$defs/filter_criteria/$defs/ecr_image_repository_name"]])
		ecr_image_tags?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/ecr_image_tags", [..._#defs."/$defs/filter_criteria/$defs/ecr_image_tags"]])
		epss_score?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/epss_score", [..._#defs."/$defs/filter_criteria/$defs/epss_score"]])
		exploit_available?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/exploit_available", [..._#defs."/$defs/filter_criteria/$defs/exploit_available"]])
		finding_arn?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/finding_arn", [..._#defs."/$defs/filter_criteria/$defs/finding_arn"]])
		finding_status?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/finding_status", [..._#defs."/$defs/filter_criteria/$defs/finding_status"]])
		finding_type?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/finding_type", [..._#defs."/$defs/filter_criteria/$defs/finding_type"]])
		first_observed_at?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/first_observed_at", [..._#defs."/$defs/filter_criteria/$defs/first_observed_at"]])
		fix_available?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/fix_available", [..._#defs."/$defs/filter_criteria/$defs/fix_available"]])
		inspector_score?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/inspector_score", [..._#defs."/$defs/filter_criteria/$defs/inspector_score"]])
		lambda_function_execution_role_arn?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/lambda_function_execution_role_arn", [..._#defs."/$defs/filter_criteria/$defs/lambda_function_execution_role_arn"]])
		lambda_function_last_modified_at?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/lambda_function_last_modified_at", [..._#defs."/$defs/filter_criteria/$defs/lambda_function_last_modified_at"]])
		lambda_function_layers?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/lambda_function_layers", [..._#defs."/$defs/filter_criteria/$defs/lambda_function_layers"]])
		lambda_function_name?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/lambda_function_name", [..._#defs."/$defs/filter_criteria/$defs/lambda_function_name"]])
		lambda_function_runtime?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/lambda_function_runtime", [..._#defs."/$defs/filter_criteria/$defs/lambda_function_runtime"]])
		last_observed_at?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/last_observed_at", [..._#defs."/$defs/filter_criteria/$defs/last_observed_at"]])
		network_protocol?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/network_protocol", [..._#defs."/$defs/filter_criteria/$defs/network_protocol"]])
		port_range?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/port_range", [..._#defs."/$defs/filter_criteria/$defs/port_range"]])
		related_vulnerabilities?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/related_vulnerabilities", [..._#defs."/$defs/filter_criteria/$defs/related_vulnerabilities"]])
		resource_id?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/resource_id", [..._#defs."/$defs/filter_criteria/$defs/resource_id"]])
		resource_tags?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/resource_tags", [..._#defs."/$defs/filter_criteria/$defs/resource_tags"]])
		resource_type?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/resource_type", [..._#defs."/$defs/filter_criteria/$defs/resource_type"]])
		severity?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/severity", [..._#defs."/$defs/filter_criteria/$defs/severity"]])
		title?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/title", [..._#defs."/$defs/filter_criteria/$defs/title"]])
		updated_at?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/updated_at", [..._#defs."/$defs/filter_criteria/$defs/updated_at"]])
		vendor_severity?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/vendor_severity", [..._#defs."/$defs/filter_criteria/$defs/vendor_severity"]])
		vulnerability_id?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/vulnerability_id", [..._#defs."/$defs/filter_criteria/$defs/vulnerability_id"]])
		vulnerability_source?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/vulnerability_source", [..._#defs."/$defs/filter_criteria/$defs/vulnerability_source"]])
		vulnerable_packages?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/vulnerable_packages", [..._#defs."/$defs/filter_criteria/$defs/vulnerable_packages"]])
	})

	_#defs: "/$defs/filter_criteria/$defs/aws_account_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/code_vulnerability_detector_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/code_vulnerability_detector_tags": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/code_vulnerability_file_path": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/component_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/component_type": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/ec2_instance_image_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/ec2_instance_subnet_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/ec2_instance_vpc_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/ecr_image_architecture": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/ecr_image_hash": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/ecr_image_pushed_at": close({
		end_inclusive?:   string
		start_inclusive?: string
	})

	_#defs: "/$defs/filter_criteria/$defs/ecr_image_registry": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/ecr_image_repository_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/ecr_image_tags": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/epss_score": close({
		lower_inclusive!: number
		upper_inclusive!: number
	})

	_#defs: "/$defs/filter_criteria/$defs/exploit_available": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/finding_arn": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/finding_status": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/finding_type": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/first_observed_at": close({
		end_inclusive?:   string
		start_inclusive?: string
	})

	_#defs: "/$defs/filter_criteria/$defs/fix_available": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/inspector_score": close({
		lower_inclusive!: number
		upper_inclusive!: number
	})

	_#defs: "/$defs/filter_criteria/$defs/lambda_function_execution_role_arn": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/lambda_function_last_modified_at": close({
		end_inclusive?:   string
		start_inclusive?: string
	})

	_#defs: "/$defs/filter_criteria/$defs/lambda_function_layers": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/lambda_function_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/lambda_function_runtime": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/last_observed_at": close({
		end_inclusive?:   string
		start_inclusive?: string
	})

	_#defs: "/$defs/filter_criteria/$defs/network_protocol": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/port_range": close({
		begin_inclusive!: number
		end_inclusive!:   number
	})

	_#defs: "/$defs/filter_criteria/$defs/related_vulnerabilities": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/resource_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/resource_tags": close({
		comparison!: string
		key!:        string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/resource_type": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/severity": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/title": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/updated_at": close({
		end_inclusive?:   string
		start_inclusive?: string
	})

	_#defs: "/$defs/filter_criteria/$defs/vendor_severity": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/vulnerability_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/vulnerability_source": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/vulnerable_packages": close({
		architecture?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/architecture", [..._#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/architecture"]])
		epoch?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/epoch", [..._#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/epoch"]])
		file_path?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/file_path", [..._#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/file_path"]])
		name?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/name", [..._#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/name"]])
		release?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/release", [..._#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/release"]])
		source_lambda_layer_arn?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/source_lambda_layer_arn", [..._#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/source_lambda_layer_arn"]])
		source_layer_hash?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/source_layer_hash", [..._#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/source_layer_hash"]])
		version?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/version", [..._#defs."/$defs/filter_criteria/$defs/vulnerable_packages/$defs/version"]])
	})

	_#defs: "/$defs/filter_criteria/$defs/vulnerable_packages/$defs/architecture": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/vulnerable_packages/$defs/epoch": close({
		lower_inclusive!: number
		upper_inclusive!: number
	})

	_#defs: "/$defs/filter_criteria/$defs/vulnerable_packages/$defs/file_path": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/vulnerable_packages/$defs/name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/vulnerable_packages/$defs/release": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/vulnerable_packages/$defs/source_lambda_layer_arn": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/vulnerable_packages/$defs/source_layer_hash": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filter_criteria/$defs/vulnerable_packages/$defs/version": close({
		comparison!: string
		value!:      string
	})
}
