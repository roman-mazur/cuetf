package res

#aws_msk_scram_secret_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_msk_scram_secret_association")
	cluster_arn: string
	id?:         string
	secret_arn_list: [...string]
}
