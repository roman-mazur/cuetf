package data

#aws_ecs_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_cluster")
	close({
		arn?:                                  string
		cluster_name!:                         string
		id?:                                   string
		pending_tasks_count?:                  number
		region?:                               string
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
