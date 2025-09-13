package res

import "list"

#aws_securityhub_insight: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_insight")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		group_by_attribute!: string
		id?:                 string
		name!:               string
		filters?: matchN(1, [#filters, list.MaxItems(1) & [_, ...] & [...#filters]])
	})

	#filters: close({
		aws_account_id?: matchN(1, [_#defs."/$defs/filters/$defs/aws_account_id", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/aws_account_id"]])
		company_name?: matchN(1, [_#defs."/$defs/filters/$defs/company_name", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/company_name"]])
		compliance_status?: matchN(1, [_#defs."/$defs/filters/$defs/compliance_status", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/compliance_status"]])
		confidence?: matchN(1, [_#defs."/$defs/filters/$defs/confidence", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/confidence"]])
		created_at?: matchN(1, [_#defs."/$defs/filters/$defs/created_at", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/created_at"]])
		criticality?: matchN(1, [_#defs."/$defs/filters/$defs/criticality", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/criticality"]])
		description?: matchN(1, [_#defs."/$defs/filters/$defs/description", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/description"]])
		finding_provider_fields_confidence?: matchN(1, [_#defs."/$defs/filters/$defs/finding_provider_fields_confidence", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/finding_provider_fields_confidence"]])
		finding_provider_fields_criticality?: matchN(1, [_#defs."/$defs/filters/$defs/finding_provider_fields_criticality", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/finding_provider_fields_criticality"]])
		finding_provider_fields_related_findings_id?: matchN(1, [_#defs."/$defs/filters/$defs/finding_provider_fields_related_findings_id", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/finding_provider_fields_related_findings_id"]])
		finding_provider_fields_related_findings_product_arn?: matchN(1, [_#defs."/$defs/filters/$defs/finding_provider_fields_related_findings_product_arn", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/finding_provider_fields_related_findings_product_arn"]])
		finding_provider_fields_severity_label?: matchN(1, [_#defs."/$defs/filters/$defs/finding_provider_fields_severity_label", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/finding_provider_fields_severity_label"]])
		finding_provider_fields_severity_original?: matchN(1, [_#defs."/$defs/filters/$defs/finding_provider_fields_severity_original", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/finding_provider_fields_severity_original"]])
		finding_provider_fields_types?: matchN(1, [_#defs."/$defs/filters/$defs/finding_provider_fields_types", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/finding_provider_fields_types"]])
		first_observed_at?: matchN(1, [_#defs."/$defs/filters/$defs/first_observed_at", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/first_observed_at"]])
		generator_id?: matchN(1, [_#defs."/$defs/filters/$defs/generator_id", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/generator_id"]])
		id?: matchN(1, [_#defs."/$defs/filters/$defs/id", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/id"]])
		keyword?: matchN(1, [_#defs."/$defs/filters/$defs/keyword", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/keyword"]])
		last_observed_at?: matchN(1, [_#defs."/$defs/filters/$defs/last_observed_at", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/last_observed_at"]])
		malware_name?: matchN(1, [_#defs."/$defs/filters/$defs/malware_name", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/malware_name"]])
		malware_path?: matchN(1, [_#defs."/$defs/filters/$defs/malware_path", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/malware_path"]])
		malware_state?: matchN(1, [_#defs."/$defs/filters/$defs/malware_state", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/malware_state"]])
		malware_type?: matchN(1, [_#defs."/$defs/filters/$defs/malware_type", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/malware_type"]])
		network_destination_domain?: matchN(1, [_#defs."/$defs/filters/$defs/network_destination_domain", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/network_destination_domain"]])
		network_destination_ipv4?: matchN(1, [_#defs."/$defs/filters/$defs/network_destination_ipv4", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/network_destination_ipv4"]])
		network_destination_ipv6?: matchN(1, [_#defs."/$defs/filters/$defs/network_destination_ipv6", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/network_destination_ipv6"]])
		network_destination_port?: matchN(1, [_#defs."/$defs/filters/$defs/network_destination_port", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/network_destination_port"]])
		network_direction?: matchN(1, [_#defs."/$defs/filters/$defs/network_direction", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/network_direction"]])
		network_protocol?: matchN(1, [_#defs."/$defs/filters/$defs/network_protocol", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/network_protocol"]])
		network_source_domain?: matchN(1, [_#defs."/$defs/filters/$defs/network_source_domain", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/network_source_domain"]])
		network_source_ipv4?: matchN(1, [_#defs."/$defs/filters/$defs/network_source_ipv4", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/network_source_ipv4"]])
		network_source_ipv6?: matchN(1, [_#defs."/$defs/filters/$defs/network_source_ipv6", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/network_source_ipv6"]])
		network_source_mac?: matchN(1, [_#defs."/$defs/filters/$defs/network_source_mac", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/network_source_mac"]])
		network_source_port?: matchN(1, [_#defs."/$defs/filters/$defs/network_source_port", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/network_source_port"]])
		note_text?: matchN(1, [_#defs."/$defs/filters/$defs/note_text", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/note_text"]])
		note_updated_at?: matchN(1, [_#defs."/$defs/filters/$defs/note_updated_at", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/note_updated_at"]])
		note_updated_by?: matchN(1, [_#defs."/$defs/filters/$defs/note_updated_by", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/note_updated_by"]])
		process_launched_at?: matchN(1, [_#defs."/$defs/filters/$defs/process_launched_at", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/process_launched_at"]])
		process_name?: matchN(1, [_#defs."/$defs/filters/$defs/process_name", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/process_name"]])
		process_parent_pid?: matchN(1, [_#defs."/$defs/filters/$defs/process_parent_pid", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/process_parent_pid"]])
		process_path?: matchN(1, [_#defs."/$defs/filters/$defs/process_path", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/process_path"]])
		process_pid?: matchN(1, [_#defs."/$defs/filters/$defs/process_pid", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/process_pid"]])
		process_terminated_at?: matchN(1, [_#defs."/$defs/filters/$defs/process_terminated_at", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/process_terminated_at"]])
		product_arn?: matchN(1, [_#defs."/$defs/filters/$defs/product_arn", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/product_arn"]])
		product_fields?: matchN(1, [_#defs."/$defs/filters/$defs/product_fields", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/product_fields"]])
		product_name?: matchN(1, [_#defs."/$defs/filters/$defs/product_name", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/product_name"]])
		recommendation_text?: matchN(1, [_#defs."/$defs/filters/$defs/recommendation_text", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/recommendation_text"]])
		record_state?: matchN(1, [_#defs."/$defs/filters/$defs/record_state", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/record_state"]])
		related_findings_id?: matchN(1, [_#defs."/$defs/filters/$defs/related_findings_id", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/related_findings_id"]])
		related_findings_product_arn?: matchN(1, [_#defs."/$defs/filters/$defs/related_findings_product_arn", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/related_findings_product_arn"]])
		resource_aws_ec2_instance_iam_instance_profile_arn?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_ec2_instance_iam_instance_profile_arn", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_ec2_instance_iam_instance_profile_arn"]])
		resource_aws_ec2_instance_image_id?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_ec2_instance_image_id", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_ec2_instance_image_id"]])
		resource_aws_ec2_instance_ipv4_addresses?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_ec2_instance_ipv4_addresses", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_ec2_instance_ipv4_addresses"]])
		resource_aws_ec2_instance_ipv6_addresses?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_ec2_instance_ipv6_addresses", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_ec2_instance_ipv6_addresses"]])
		resource_aws_ec2_instance_key_name?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_ec2_instance_key_name", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_ec2_instance_key_name"]])
		resource_aws_ec2_instance_launched_at?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_ec2_instance_launched_at", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_ec2_instance_launched_at"]])
		resource_aws_ec2_instance_subnet_id?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_ec2_instance_subnet_id", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_ec2_instance_subnet_id"]])
		resource_aws_ec2_instance_type?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_ec2_instance_type", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_ec2_instance_type"]])
		resource_aws_ec2_instance_vpc_id?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_ec2_instance_vpc_id", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_ec2_instance_vpc_id"]])
		resource_aws_iam_access_key_created_at?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_iam_access_key_created_at", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_iam_access_key_created_at"]])
		resource_aws_iam_access_key_status?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_iam_access_key_status", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_iam_access_key_status"]])
		resource_aws_iam_access_key_user_name?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_iam_access_key_user_name", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_iam_access_key_user_name"]])
		resource_aws_s3_bucket_owner_id?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_s3_bucket_owner_id", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_s3_bucket_owner_id"]])
		resource_aws_s3_bucket_owner_name?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_s3_bucket_owner_name", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_aws_s3_bucket_owner_name"]])
		resource_container_image_id?: matchN(1, [_#defs."/$defs/filters/$defs/resource_container_image_id", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_container_image_id"]])
		resource_container_image_name?: matchN(1, [_#defs."/$defs/filters/$defs/resource_container_image_name", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_container_image_name"]])
		resource_container_launched_at?: matchN(1, [_#defs."/$defs/filters/$defs/resource_container_launched_at", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_container_launched_at"]])
		resource_container_name?: matchN(1, [_#defs."/$defs/filters/$defs/resource_container_name", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_container_name"]])
		resource_details_other?: matchN(1, [_#defs."/$defs/filters/$defs/resource_details_other", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_details_other"]])
		resource_id?: matchN(1, [_#defs."/$defs/filters/$defs/resource_id", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_id"]])
		resource_partition?: matchN(1, [_#defs."/$defs/filters/$defs/resource_partition", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_partition"]])
		resource_region?: matchN(1, [_#defs."/$defs/filters/$defs/resource_region", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_region"]])
		resource_tags?: matchN(1, [_#defs."/$defs/filters/$defs/resource_tags", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_tags"]])
		resource_type?: matchN(1, [_#defs."/$defs/filters/$defs/resource_type", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/resource_type"]])
		severity_label?: matchN(1, [_#defs."/$defs/filters/$defs/severity_label", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/severity_label"]])
		source_url?: matchN(1, [_#defs."/$defs/filters/$defs/source_url", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/source_url"]])
		threat_intel_indicator_category?: matchN(1, [_#defs."/$defs/filters/$defs/threat_intel_indicator_category", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/threat_intel_indicator_category"]])
		threat_intel_indicator_last_observed_at?: matchN(1, [_#defs."/$defs/filters/$defs/threat_intel_indicator_last_observed_at", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/threat_intel_indicator_last_observed_at"]])
		threat_intel_indicator_source?: matchN(1, [_#defs."/$defs/filters/$defs/threat_intel_indicator_source", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/threat_intel_indicator_source"]])
		threat_intel_indicator_source_url?: matchN(1, [_#defs."/$defs/filters/$defs/threat_intel_indicator_source_url", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/threat_intel_indicator_source_url"]])
		threat_intel_indicator_type?: matchN(1, [_#defs."/$defs/filters/$defs/threat_intel_indicator_type", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/threat_intel_indicator_type"]])
		threat_intel_indicator_value?: matchN(1, [_#defs."/$defs/filters/$defs/threat_intel_indicator_value", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/threat_intel_indicator_value"]])
		title?: matchN(1, [_#defs."/$defs/filters/$defs/title", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/title"]])
		type?: matchN(1, [_#defs."/$defs/filters/$defs/type", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/type"]])
		updated_at?: matchN(1, [_#defs."/$defs/filters/$defs/updated_at", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/updated_at"]])
		user_defined_values?: matchN(1, [_#defs."/$defs/filters/$defs/user_defined_values", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/user_defined_values"]])
		verification_state?: matchN(1, [_#defs."/$defs/filters/$defs/verification_state", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/verification_state"]])
		workflow_status?: matchN(1, [_#defs."/$defs/filters/$defs/workflow_status", list.MaxItems(20) & [..._#defs."/$defs/filters/$defs/workflow_status"]])
	})

	_#defs: "/$defs/filters/$defs/aws_account_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/company_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/compliance_status": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/confidence": close({
		eq?:  string
		gte?: string
		lte?: string
	})

	_#defs: "/$defs/filters/$defs/created_at": close({
		date_range?: matchN(1, [_#defs."/$defs/filters/$defs/created_at/$defs/date_range", list.MaxItems(1) & [..._#defs."/$defs/filters/$defs/created_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/filters/$defs/created_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/filters/$defs/criticality": close({
		eq?:  string
		gte?: string
		lte?: string
	})

	_#defs: "/$defs/filters/$defs/description": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/finding_provider_fields_confidence": close({
		eq?:  string
		gte?: string
		lte?: string
	})

	_#defs: "/$defs/filters/$defs/finding_provider_fields_criticality": close({
		eq?:  string
		gte?: string
		lte?: string
	})

	_#defs: "/$defs/filters/$defs/finding_provider_fields_related_findings_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/finding_provider_fields_related_findings_product_arn": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/finding_provider_fields_severity_label": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/finding_provider_fields_severity_original": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/finding_provider_fields_types": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/first_observed_at": close({
		date_range?: matchN(1, [_#defs."/$defs/filters/$defs/first_observed_at/$defs/date_range", list.MaxItems(1) & [..._#defs."/$defs/filters/$defs/first_observed_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/filters/$defs/first_observed_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/filters/$defs/generator_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/keyword": close({
		value!: string
	})

	_#defs: "/$defs/filters/$defs/last_observed_at": close({
		date_range?: matchN(1, [_#defs."/$defs/filters/$defs/last_observed_at/$defs/date_range", list.MaxItems(1) & [..._#defs."/$defs/filters/$defs/last_observed_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/filters/$defs/last_observed_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/filters/$defs/malware_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/malware_path": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/malware_state": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/malware_type": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/network_destination_domain": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/network_destination_ipv4": close({
		cidr!: string
	})

	_#defs: "/$defs/filters/$defs/network_destination_ipv6": close({
		cidr!: string
	})

	_#defs: "/$defs/filters/$defs/network_destination_port": close({
		eq?:  string
		gte?: string
		lte?: string
	})

	_#defs: "/$defs/filters/$defs/network_direction": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/network_protocol": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/network_source_domain": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/network_source_ipv4": close({
		cidr!: string
	})

	_#defs: "/$defs/filters/$defs/network_source_ipv6": close({
		cidr!: string
	})

	_#defs: "/$defs/filters/$defs/network_source_mac": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/network_source_port": close({
		eq?:  string
		gte?: string
		lte?: string
	})

	_#defs: "/$defs/filters/$defs/note_text": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/note_updated_at": close({
		date_range?: matchN(1, [_#defs."/$defs/filters/$defs/note_updated_at/$defs/date_range", list.MaxItems(1) & [..._#defs."/$defs/filters/$defs/note_updated_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/filters/$defs/note_updated_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/filters/$defs/note_updated_by": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/process_launched_at": close({
		date_range?: matchN(1, [_#defs."/$defs/filters/$defs/process_launched_at/$defs/date_range", list.MaxItems(1) & [..._#defs."/$defs/filters/$defs/process_launched_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/filters/$defs/process_launched_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/filters/$defs/process_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/process_parent_pid": close({
		eq?:  string
		gte?: string
		lte?: string
	})

	_#defs: "/$defs/filters/$defs/process_path": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/process_pid": close({
		eq?:  string
		gte?: string
		lte?: string
	})

	_#defs: "/$defs/filters/$defs/process_terminated_at": close({
		date_range?: matchN(1, [_#defs."/$defs/filters/$defs/process_terminated_at/$defs/date_range", list.MaxItems(1) & [..._#defs."/$defs/filters/$defs/process_terminated_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/filters/$defs/process_terminated_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/filters/$defs/product_arn": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/product_fields": close({
		comparison!: string
		key!:        string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/product_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/recommendation_text": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/record_state": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/related_findings_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/related_findings_product_arn": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_ec2_instance_iam_instance_profile_arn": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_ec2_instance_image_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_ec2_instance_ipv4_addresses": close({
		cidr!: string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_ec2_instance_ipv6_addresses": close({
		cidr!: string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_ec2_instance_key_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_ec2_instance_launched_at": close({
		date_range?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_ec2_instance_launched_at/$defs/date_range", list.MaxItems(1) & [..._#defs."/$defs/filters/$defs/resource_aws_ec2_instance_launched_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_ec2_instance_launched_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/filters/$defs/resource_aws_ec2_instance_subnet_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_ec2_instance_type": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_ec2_instance_vpc_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_iam_access_key_created_at": close({
		date_range?: matchN(1, [_#defs."/$defs/filters/$defs/resource_aws_iam_access_key_created_at/$defs/date_range", list.MaxItems(1) & [..._#defs."/$defs/filters/$defs/resource_aws_iam_access_key_created_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_iam_access_key_created_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/filters/$defs/resource_aws_iam_access_key_status": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_iam_access_key_user_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_s3_bucket_owner_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_aws_s3_bucket_owner_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_container_image_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_container_image_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_container_launched_at": close({
		date_range?: matchN(1, [_#defs."/$defs/filters/$defs/resource_container_launched_at/$defs/date_range", list.MaxItems(1) & [..._#defs."/$defs/filters/$defs/resource_container_launched_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/filters/$defs/resource_container_launched_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/filters/$defs/resource_container_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_details_other": close({
		comparison!: string
		key!:        string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_partition": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_region": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_tags": close({
		comparison!: string
		key!:        string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/resource_type": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/severity_label": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/source_url": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/threat_intel_indicator_category": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/threat_intel_indicator_last_observed_at": close({
		date_range?: matchN(1, [_#defs."/$defs/filters/$defs/threat_intel_indicator_last_observed_at/$defs/date_range", list.MaxItems(1) & [..._#defs."/$defs/filters/$defs/threat_intel_indicator_last_observed_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/filters/$defs/threat_intel_indicator_last_observed_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/filters/$defs/threat_intel_indicator_source": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/threat_intel_indicator_source_url": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/threat_intel_indicator_type": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/threat_intel_indicator_value": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/title": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/type": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/updated_at": close({
		date_range?: matchN(1, [_#defs."/$defs/filters/$defs/updated_at/$defs/date_range", list.MaxItems(1) & [..._#defs."/$defs/filters/$defs/updated_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/filters/$defs/updated_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/filters/$defs/user_defined_values": close({
		comparison!: string
		key!:        string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/verification_state": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/filters/$defs/workflow_status": close({
		comparison!: string
		value!:      string
	})
}
