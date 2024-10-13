package data

#aws_iam_session_context: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_session_context")
	arn!:          string
	id?:           string
	issuer_arn?:   string
	issuer_id?:    string
	issuer_name?:  string
	session_name?: string
}
