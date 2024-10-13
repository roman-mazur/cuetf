package data

#aws_iam_user_ssh_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_user_ssh_key")
	encoding!:          string
	fingerprint?:       string
	id?:                string
	public_key?:        string
	ssh_public_key_id!: string
	status?:            string
	username!:          string
}
