package data

#aws_odb_cloud_autonomous_vm_clusters: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_odb_cloud_autonomous_vm_clusters")
	close({
		// List of Cloud Autonomous VM Clusters. The list going to contain
		// basic information about the cloud autonomous VM clusters.
		cloud_autonomous_vm_clusters?: [...close({
			arn?:                             string
			cloud_exadata_infrastructure_id?: string
			display_name?:                    string
			id?:                              string
			oci_resource_anchor_name?:        string
			oci_url?:                         string
			ocid?:                            string
			odb_network_id?:                  string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
