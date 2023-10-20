package res

#aws_iam_openid_connect_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_openid_connect_provider")
	arn?: string
	client_id_list: [...string]
	id?: string
	tags?: [string]: string
	tags_all?: [string]: string
	thumbprint_list: [...string]
	url: string
}
