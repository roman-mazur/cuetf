package res

#aws_iam_user_ssh_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_user_ssh_key")
	close({
		encoding!:          string
		fingerprint?:       string
		id?:                string
		public_key!:        string
		ssh_public_key_id?: string
		status?:            string
		username!:          string
	})
}
