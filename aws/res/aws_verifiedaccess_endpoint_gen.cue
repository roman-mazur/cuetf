package res

import "list"

#aws_verifiedaccess_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedaccess_endpoint")
	application_domain!:       string
	attachment_type!:          string
	description?:              string
	device_validation_domain?: string
	domain_certificate_arn!:   string
	endpoint_domain?:          string
	endpoint_domain_prefix!:   string
	endpoint_type!:            string
	id?:                       string
	policy_document?:          string
	security_group_ids?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	verified_access_group_id!:    string
	verified_access_instance_id?: string
	load_balancer_options?: #load_balancer_options | list.MaxItems(1) & [...#load_balancer_options]
	network_interface_options?: #network_interface_options | list.MaxItems(1) & [...#network_interface_options]
	sse_specification?: #sse_specification | list.MaxItems(1) & [...#sse_specification]
	timeouts?: #timeouts

	#load_balancer_options: {
		load_balancer_arn?: string
		port?:              number
		protocol?:          string
		subnet_ids?: [...string]
	}

	#network_interface_options: {
		network_interface_id?: string
		port?:                 number
		protocol?:             string
	}

	#sse_specification: {
		customer_managed_key_enabled?: bool
		kms_key_arn?:                  string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
