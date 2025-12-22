package data

#aws_ecs_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ecs_cluster")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                               string
		arn?:                                  string
		cluster_name!:                         string
		id?:                                   string
		pending_tasks_count?:                  number
		registered_container_instances_count?: number
		running_tasks_count?:                  number
		service_connect_defaults?: [...close({
			namespace?: string
		})]
		setting?: [...close({
			name?:  string
			value?: string
		})]
		status?: string
		tags?: [string]: string
	})
}
