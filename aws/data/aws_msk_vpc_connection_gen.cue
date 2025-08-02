package data

#aws_msk_vpc_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_msk_vpc_connection")
	close({
		arn!:            string
		authentication?: string
		client_subnets?: [...string]
		id?:     string
		region?: string
		security_groups?: [...string]
		tags?: [string]: string
		target_cluster_arn?: string
		vpc_id?:             string
	})
}
