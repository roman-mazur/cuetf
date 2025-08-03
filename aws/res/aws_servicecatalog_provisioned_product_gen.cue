package res

import "list"

#aws_servicecatalog_provisioned_product: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_provisioned_product")
	close({
		accept_language?: string
		arn?:             string
		provisioning_parameters?: matchN(1, [#provisioning_parameters, [...#provisioning_parameters]])
		stack_set_provisioning_preferences?: matchN(1, [#stack_set_provisioning_preferences, list.MaxItems(1) & [...#stack_set_provisioning_preferences]])
		timeouts?: #timeouts
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
		outputs?: [...close({
			description?: string
			key?:         string
			value?:       string
		})]
		path_id?:                    string
		path_name?:                  string
		product_id?:                 string
		product_name?:               string
		provisioning_artifact_id?:   string
		provisioning_artifact_name?: string
		region?:                     string
		retain_physical_resources?:  bool
		status?:                     string
		status_message?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
	})

	#provisioning_parameters: close({
		key!:                string
		use_previous_value?: bool
		value?:              string
	})

	#stack_set_provisioning_preferences: close({
		accounts?: [...string]
		failure_tolerance_count?:      number
		failure_tolerance_percentage?: number
		max_concurrency_count?:        number
		max_concurrency_percentage?:   number
		regions?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
