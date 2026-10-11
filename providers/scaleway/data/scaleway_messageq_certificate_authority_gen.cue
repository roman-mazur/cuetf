package data

scaleway_messageq_certificate_authority: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_messageq_certificate_authority")
	close({
		// The ID of the MessageQ deployment
		deployment_id!: string

		// The ID of the certificate authority data source, in the `{region}/{deployment_id}` format.
		id?: string

		// PEM-encoded certificate authority content
		pem?: string

		// The region the MessageQ deployment is in.
		region?: string
	})
}
