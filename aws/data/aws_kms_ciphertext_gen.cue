package data

#aws_kms_ciphertext: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kms_ciphertext")
	ciphertext_blob?: string
	context?: [string]: string
	id?:        string
	key_id!:    string
	plaintext!: string
}
