package res

#aws_msk_vpc_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_msk_vpc_connection")
	arn?:            string
	authentication!: string
	client_subnets!: [...string]
	id?: string
	security_groups!: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	target_cluster_arn!: string
	vpc_id!:             string
}
