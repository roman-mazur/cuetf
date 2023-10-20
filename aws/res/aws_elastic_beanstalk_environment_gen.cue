package res

#aws_elastic_beanstalk_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_elastic_beanstalk_environment")
	all_settings?: [...{
		name?:      string
		namespace?: string
		resource?:  string
		value?:     string
	}]
	application: string
	arn?:        string
	autoscaling_groups?: [...string]
	cname?:        string
	cname_prefix?: string
	description?:  string
	endpoint_url?: string
	id?:           string
	instances?: [...string]
	launch_configurations?: [...string]
	load_balancers?: [...string]
	name:           string
	platform_arn?:  string
	poll_interval?: string
	queues?: [...string]
	solution_stack_name?: string
	tags?: [string]: string
	tags_all?: [string]: string
	template_name?: string
	tier?:          string
	triggers?: [...string]
	version_label?:          string
	wait_for_ready_timeout?: string
	setting?:                #setting | [...#setting]

	#setting: {
		name:      string
		namespace: string
		resource?: string
		value:     string
	}
}
