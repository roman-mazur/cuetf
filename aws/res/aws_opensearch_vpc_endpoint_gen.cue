package res

import "list"

#aws_opensearch_vpc_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearch_vpc_endpoint")
	domain_arn!: string
	endpoint?:   string
	id?:         string
	timeouts?:   #timeouts
	vpc_options?: #vpc_options | list.MaxItems(1) & [_, ...] & [...#vpc_options]

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#vpc_options: {
		availability_zones?: [...string]
		security_group_ids?: [...string]
		subnet_ids!: [...string]
		vpc_id?: string
	}
}
