package res

#aws_elastic_beanstalk_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_elastic_beanstalk_environment")
	close({
		all_settings?: [...close({
			name?:      string
			namespace?: string
			resource?:  string
			value?:     string
		})]
		application!: string
		arn?:         string
		autoscaling_groups?: [...string]
		cname?:        string
		cname_prefix?: string
		description?:  string
		endpoint_url?: string
		id?:           string
		instances?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		launch_configurations?: [...string]
		load_balancers?: [...string]
		setting?: matchN(1, [#setting, [...#setting]])
		name!:          string
		platform_arn?:  string
		poll_interval?: string
		queues?: [...string]
		solution_stack_name?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		template_name?: string
		tier?:          string
		triggers?: [...string]
		version_label?:          string
		wait_for_ready_timeout?: string
	})

	#setting: close({
		name!:      string
		namespace!: string
		resource?:  string
		value!:     string
	})
}
