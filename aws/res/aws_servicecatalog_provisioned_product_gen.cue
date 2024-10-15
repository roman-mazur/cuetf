package res

import "list"

#aws_servicecatalog_provisioned_product: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_provisioned_product")
	accept_language?: string
	arn?:             string
	cloudwatch_dashboard_names?: [...string]
	created_time?:                           string
	id?:                                     string
	ignore_errors?:                          bool
	last_provisioning_record_id?:            string
	last_record_id?:                         string
	last_successful_provisioning_record_id?: string
	launch_role_arn?:                        string
	name!:                                   string
	notification_arns?: [...string]
	outputs?: [...{
		description?: string
		key?:         string
		value?:       string
	}]
	path_id?:                    string
	path_name?:                  string
	product_id?:                 string
	product_name?:               string
	provisioning_artifact_id?:   string
	provisioning_artifact_name?: string
	retain_physical_resources?:  bool
	status?:                     string
	status_message?:             string
	tags?: [string]:     string
	tags_all?: [string]: string
	type?: string
	provisioning_parameters?: #provisioning_parameters | [...#provisioning_parameters]
	stack_set_provisioning_preferences?: #stack_set_provisioning_preferences | list.MaxItems(1) & [...#stack_set_provisioning_preferences]
	timeouts?: #timeouts

	#provisioning_parameters: {
		key!:                string
		use_previous_value?: bool
		value?:              string
	}

	#stack_set_provisioning_preferences: {
		accounts?: [...string]
		failure_tolerance_count?:      number
		failure_tolerance_percentage?: number
		max_concurrency_count?:        number
		max_concurrency_percentage?:   number
		regions?: [...string]
	}

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
