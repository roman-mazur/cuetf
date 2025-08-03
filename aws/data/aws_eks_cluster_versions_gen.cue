package data

#aws_eks_cluster_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_cluster_versions")
	close({
		cluster_type?: string
		cluster_versions?: [...close({
			cluster_type?:                 string
			cluster_version?:              string
			default_platform_version?:     string
			default_version?:              bool
			end_of_extended_support_date?: string
			end_of_standard_support_date?: string
			kubernetes_patch_version?:     string
			release_date?:                 string
			version_status?:               string
		})]
		cluster_versions_only?: [...string]
		default_only?:   bool
		include_all?:    bool
		region?:         string
		version_status?: string
	})
}
