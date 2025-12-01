package data

#aws_odb_cloud_exadata_infrastructures: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_odb_cloud_exadata_infrastructures")
	close({
		// List of Cloud Exadata Infrastructures. Returns basic
		// information about the Cloud Exadata Infrastructures.
		cloud_exadata_infrastructures?: [...close({
			arn?:                      string
			display_name?:             string
			id?:                       string
			oci_resource_anchor_name?: string
			oci_url?:                  string
			ocid?:                     string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
