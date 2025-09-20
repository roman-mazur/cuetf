package res

#aws_workspacesweb_trust_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspacesweb_trust_store")
	close({
		associated_portal_arns?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		trust_store_arn?: string
		certificate?: matchN(1, [#certificate, [...#certificate]])
	})

	#certificate: close({
		body!:             string
		issuer?:           string
		not_valid_after?:  string
		not_valid_before?: string
		subject?:          string
		thumbprint?:       string
	})
}
